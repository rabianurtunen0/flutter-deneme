import 'package:flutter/material.dart';
import 'package:yartu_application/startseite.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isVisible = true;
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(42.0),
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
                height: 44,
                margin: const EdgeInsets.all(4.0),
                child: TextField(
                  autofocus: false,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  textAlignVertical: TextAlignVertical.bottom,
                  /*validator:(value) {},
                  onSaved: (value){
                    emailController.text = value!;
                  },
                  textInputAction: TextInputAction.next,*/
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(0.0),
                child: Row(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 28.0, 130.0, 2.0),
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 28.0, 0.0, 2.0),
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
                  ],
                ),
              ),
              Container(
                width: 300,
                height: 44,
                margin: const EdgeInsets.all(4.0),
                child: TextField(
                  controller: passwordController,
                  obscureText: _isVisible ? false : true,
                  textAlignVertical: TextAlignVertical.bottom,
                  style: const TextStyle(
                    color: Color(0xff394c66),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                  onTap: updateStatus,
                  decoration: InputDecoration(
                    hintText: 'password',
                    hintStyle: const TextStyle(
                      color: Color(0xff394c66),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                    suffixIcon: Icon(
                      _isVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: const Color(0XFF9AA1B4),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 16.0),
                child: const ListTile(
                  title: Text(
                    'Keep me logged in',
                    style: TextStyle(
                      color: Color(0XFF394C66),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 44,
                margin: const EdgeInsets.symmetric(
                  horizontal: 4.0,
                  vertical: 4.0,
                ),
                padding: const EdgeInsets.fromLTRB(5.0, 4.0, 5.0, 4.0),
                decoration: BoxDecoration(
                    color: const Color(0XFF2356F6),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Container(
                  width: 45,
                  height: 20,
                  margin: const EdgeInsets.symmetric(
                    vertical: 6.0,
                    horizontal: 8.0,
                  ),
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
    );
  }

  Align get errorMessage {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: const EdgeInsets.all(0.0),
        child: Row(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(5.0, 8.0, 0.0, 0.0),
              child: Image(
                image: AssetImage('images/icons1.png'),
                color: Color(0XFFEB6363),
                width: 16,
                height: 16,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 0.0),
              child: Text(
                'Please enter a valid email/password',
                style: TextStyle(
                  color: Color(0XFFEB6363),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                  height: 1.33,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
class _MyHomePageState extends State<MyHomePage> {

  final _fromKey = GlobalKey<FromState>();
  
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      //validator:(value) {},
      onSaved: (value){
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,

    );

     final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,

      //validator:(value) {},
      onSaved: (value){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,

    );
    

    return const Scaffold(
      backgroundColor: Colors.white,
    );
  }
*/