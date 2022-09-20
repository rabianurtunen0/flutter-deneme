import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:yartu_application/startseite.dart';
import 'package:yartu_application/secondpage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yartu_application/passwordreset.dart';
//import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _auth = FirebaseAuth.instance;
  final _fromKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();

  bool _isVisible = true;
  void _updateStatus() {
    setState(() {
      _isVisible = true;
    });
  }

  bool _isChecked = false;
  late Box box1;

  @override
  void initState() {
    super.initState();
    createBox();
  }

  void createBox() async {
    box1 = await Hive.openBox('signData');
    getData();
  }

  void getData() {
    if (box1.get('email') != null) {
      emailController.text = box1.get('email');
      _isChecked = true;
      setState(() {});
    }
    if (box1.get('password') != null) {
      passwordController.text = box1.get('password');
      _isChecked = true;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(42.0),
          child: Form(
            key: _fromKey,
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 200,
                    margin: const EdgeInsets.fromLTRB(5.0, 14.0, 0.0, 12.0),
                    child: Image.asset('images/yartu.png'),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 81,
                    height: 40,
                    margin: const EdgeInsets.fromLTRB(5.0, 8.0, 0.0, 8.0),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color(0XFF394C66),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                        height: 1.67,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 44,
                  margin: const EdgeInsets.fromLTRB(5.0, 8.0, 0.0, 8.0),
                  child: const Text(
                    'Welcome back, please log in to your account.',
                    style: TextStyle(
                      color: Color(0XFF9AA1B4),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 124,
                    height: 20,
                    color: Colors.white,
                    margin: const EdgeInsets.fromLTRB(5.0, 20.0, 0.0, 4.0),
                    child: const Text(
                      'Email or Username',
                      style: TextStyle(
                        color: Color(0XFF394C66),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                        height: 1.43,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  margin: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    autofocus: false,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textAlignVertical: TextAlignVertical.center,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "⛔ This field is required";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      emailController.text = value!;
                    },
                    textInputAction: TextInputAction.next,
                    style: const TextStyle(
                      color: Color(0xff394c66),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'name@example.com',
                      hintStyle: TextStyle(
                        color: Color(0xff394c66),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                      contentPadding: EdgeInsets.all(10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0.0),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(5.0, 28.0, 115.0, 0.0),
                        child: Text(
                          "Password",
                          style: TextStyle(
                            color: Color(0XFF394C66),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            height: 1.43,
                          ),
                        ),
                      ),
                      TextButton(
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 28.0, 0.0, 0.0),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Color(0XFF3663F2),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                              height: 1.43,
                            ),
                          ),
                        ),
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PasswordReset()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  margin: const EdgeInsets.all(0.0),
                  child: TextFormField(
                    autofocus: false,
                    controller: passwordController,
                    obscureText: _isVisible,
                    keyboardType: TextInputType.visiblePassword,
                    textAlignVertical: TextAlignVertical.center,
                    validator: (value) {
                      RegExp regex = RegExp(r'^.{8,}$');
                      if (value!.isEmpty) {
                        return "⛔ This field is required";
                      }
                      if (!regex.hasMatch(value)) {
                        return "⛔ Enter valid password(Minimum 8 characters)";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      passwordController.text = value!;
                    },
                    textInputAction: TextInputAction.done,
                    style: const TextStyle(
                      color: Color(0xff394c66),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                    onTap: _updateStatus,
                    decoration: InputDecoration(
                      hintText: 'password',
                      hintStyle: const TextStyle(
                        color: Color(0xff394c66),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                      contentPadding: const EdgeInsets.all(10.0),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isVisible
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: const Color(0XFF9AA1B4),
                        ),
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 16.0),
                  child: Row(
                    children: <Widget>[
                      Checkbox(
                          value: _isChecked,
                          onChanged: (value) async {
                            _isChecked = !_isChecked;
                            setState(() {});
                          }),
                      const Text(
                        'Keep me logged in',
                        style: TextStyle(
                          color: Color(0XFF394C66),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.zero,
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0XFF2356F6),
                    child: MaterialButton(
                      padding: const EdgeInsets.fromLTRB(5.0, 4.0, 5.0, 4.0),
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: () {
                        if (_fromKey.currentState!.validate()) {
                          signIn(emailController.text, usernameController.text,
                              passwordController.text);
                        }
                        _signIn();
                      },
                      child: const Text(
                        'Sign In',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                          height: 1.43,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 0,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 4.0,
                    vertical: 24.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0XFFE5EBF5),
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0.0),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(13.0, 0.0, 0.0, 0.0),
                        child: Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Color(0XFF394C66),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            height: 1.5,
                          ),
                        ),
                      ),
                      TextButton(
                        child: const Text(
                          'Create account',
                          style: TextStyle(
                            color: Color(0XFF2356F6),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            height: 1.5,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StartSeite()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  void signIn(String email, String username, String password) async {
    if (_fromKey.currentState!.validate()) { 
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((email) async => {
                Fluttertoast.showToast(
                  msg: "Login succesfully :) ",
                  backgroundColor: const Color(0XFF2356F6),
                  textColor: Colors.white,
                  fontSize: 14.0,
                ),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SecondPage()))
              })
              .then((username) async => {
                Fluttertoast.showToast(
                  msg: "Login succesfully :) ",
                  backgroundColor: const Color(0XFF2356F6),
                  textColor: Colors.white,
                  fontSize: 14.0,
                ),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SecondPage()))
              })
          .catchError((e) {
        Fluttertoast.showToast(
          msg: e!.message,
          backgroundColor: const Color(0XFF2356F6),
          textColor: Colors.white,
          fontSize: 14.0,
        );
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const MyHomePage()));
      });
    }
  }
/*
  void signIn(String email, String username, String password) async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((email) async => {
                Fluttertoast.showToast(
                  msg: "Login succesfully :) ",
                  backgroundColor: const Color(0XFF2356F6),
                  textColor: Colors.white,
                  fontSize: 14.0,
                ),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SecondPage()))
              })
          .then((username) async => {
                Fluttertoast.showToast(
                  msg: "Login succesfully :) ",
                  backgroundColor: const Color(0XFF2356F6),
                  textColor: Colors.white,
                  fontSize: 14.0,
                ),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SecondPage()))
              });
    } catch (e) {
      /*Fluttertoast.showToast(
        msg: e.message ,
        backgroundColor: const Color(0XFF2356F6),
        textColor: Colors.white,
        fontSize: 14.0,
      );*/
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MyHomePage()));
    }
  }
*/
/*
    Future resetPassword() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailEditingController.text.trim());
      Fluttertoast.showToast(
        msg: "Password reset email sent",
        backgroundColor: const Color(0XFF2356F6),
        textColor: Colors.white,
        fontSize: 14.0,
      );
      Navigator.of(context).pop();
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(
        msg: e.message.toString(),
        backgroundColor: const Color(0XFF2356F6),
        textColor: Colors.white,
        fontSize: 14.0,
      );
    }
  }
}
*/
  void _signIn() {
    if (_isChecked) {
      box1.put('email', emailController.text);
      box1.put('password', passwordController.text);
    } else {
      box1.put('email', null);
      box1.put('password', null);
    }
  }
}