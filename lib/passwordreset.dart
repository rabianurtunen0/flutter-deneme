import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PasswordReset extends StatefulWidget {
  const PasswordReset({Key? key}) : super(key: key);

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  final _fromKey = GlobalKey<FormState>();
  final auth = FirebaseAuth.instance;
  final emailEditingController = TextEditingController();

  @override
  void dispose() {
    emailEditingController.dispose();
    super.dispose();
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
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0XFF2356F6),
                    child: MaterialButton(
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: resetPassword,
                      child: const Text('Reset Password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            height: 1.43,
                          )),
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
      // ignore: use_build_context_synchronously
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
