import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:yartu_application/model/user_model.dart';
import 'package:yartu_application/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;
  final _fromKey = GlobalKey<FormState>();

  final nameEditingController = TextEditingController();
  final surnameEditingController = TextEditingController();
  final usernameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final confirmPasswordEditingController = TextEditingController();

  bool _passwordVisible = true;
  void updateStatus() {
    setState(() {
      _passwordVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0XFF2356F6),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(36.0, 24.0, 36.0, 0.0),
          child: Form(
            key: _fromKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                    child: Image.asset('images/yartu1.jpg'),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                    child: TextFormField(
                      autofocus: false,
                      controller: nameEditingController,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "⛔ This field is required";
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        nameEditingController.text = newValue!;
                      },
                      textInputAction: TextInputAction.next,
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(
                        color: Color(0xff394c66),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        contentPadding:
                            EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                    child: TextFormField(
                      autofocus: false,
                      controller: surnameEditingController,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "⛔ This field is required";
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        surnameEditingController.text = newValue!;
                      },
                      textInputAction: TextInputAction.next,
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(
                        color: Color(0xff394c66),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                      decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                        labelText: 'Surname',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                    child: TextFormField(
                      autofocus: false,
                      controller: usernameEditingController,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        RegExp regex = RegExp(r'^.{6,}$');
                        if (value!.isEmpty) {
                          return "⛔ This field is required";
                        }
                        if (!regex.hasMatch(value)) {
                          return "⛔ Enter valid username(Minimum 6 characters)";
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        usernameEditingController.text = newValue!;
                      },
                      textInputAction: TextInputAction.next,
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(
                        color: Color(0xff394c66),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                      decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                        labelText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                    child: TextFormField(
                      autofocus: false,
                      controller: emailEditingController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "⛔ This field is required";
                        }
                        if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                          return "⛔ Please enter a valid email adress";
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        emailEditingController.text = newValue!;
                      },
                      textInputAction: TextInputAction.next,
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(
                        color: Color(0xff394c66),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                      decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                    child: TextFormField(
                      autofocus: false,
                      controller: passwordEditingController,
                      obscureText: _passwordVisible,
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
                      onSaved: (newValue) {
                        passwordEditingController.text = newValue!;
                      },
                      textInputAction: TextInputAction.next,
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(
                        color: Color(0xff394c66),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                      onTap: updateStatus,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: const Color(0XFF9AA1B4),
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                        labelText: 'Password',
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                    child: TextFormField(
                      autofocus: false,
                      controller: confirmPasswordEditingController,
                      obscureText: _passwordVisible,
                      validator: (value) {
                        if (confirmPasswordEditingController.text.length > 8 &&
                            value != passwordEditingController.text) {
                          return "⛔ Password don't match";
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        confirmPasswordEditingController.text = newValue!;
                      },
                      textInputAction: TextInputAction.done,
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(
                        color: Color(0xff394c66),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                      onTap: updateStatus,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: const Color(0XFF9AA1B4),
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                        labelText: 'Confirm Password',
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0XFF2356F6),
                    child: MaterialButton(
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: () {
                        signUp(emailEditingController.text,
                            passwordEditingController.text);
                      },
                      child: const Text(
                        'Sign Up',
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUp(String email, String password) async {
    if (_fromKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          )
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();
    userModel.email = user!.email;
    userModel.username = usernameEditingController.text;
    userModel.name = nameEditingController.text;
    userModel.surname = surnameEditingController.text;
    userModel.password = passwordEditingController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.email)
        .set(userModel.toMap());
    Fluttertoast.showToast(
      msg: "Account created succesfully :) ",
      //gravity: ToastGravity.CENTER,
      backgroundColor: const Color(0XFF2356F6),
      textColor: Colors.white,
      fontSize: 14.0,
    );
    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (conext) => const MyHomePage()),
        (route) => false);
  }
}
