import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yartu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Manrope',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? email;
  String? password;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
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
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 300,
                  height: 44,
                  margin: const EdgeInsets.all(4.0),
                  child: TextField(
                    controller: _emailController,
                    textAlignVertical: TextAlignVertical.bottom,
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
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
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
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 300,
                  height: 44,
                  margin: const EdgeInsets.all(4.0),
                  child: TextField(
                    controller: _passwordController,
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
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
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
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
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
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
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
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
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

class StartSeite extends StatefulWidget {
  const StartSeite({Key? key}) : super(key: key);

  @override
  State<StartSeite> createState() => _StartSeiteState();
}

class _StartSeiteState extends State<StartSeite> {
  final _fromKey = GlobalKey<FormState>();

  final nameEditingController = TextEditingController();
  final surnameEditingController = TextEditingController();
  final usernameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final confirmPasswordEditingController = TextEditingController();

  bool _isVisible = true;
  void _updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  bool isVisible = true;
  void updateStatus() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final nameField = TextFormField(
      autofocus: false,
      controller: nameEditingController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value!.isEmpty) {
          return "This field is required";
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
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
    );

    final surnameField = TextFormField(
      autofocus: false,
      controller: surnameEditingController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value!.isEmpty) {
          return "This field is required";
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
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        labelText: 'Surname',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
    );

    final usernameField = TextFormField(
      autofocus: false,
      controller: usernameEditingController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "This field is required";
        }
        if (value.trim().length < 6) {
          return 'Username must be at least 6 characters in length';
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
        hintText: 'username',
        hintStyle: TextStyle(
          color: Color(0xff394c66),
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
        ),
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        labelText: 'Username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
    );

    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "This field is required";
        }
        if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
          return "Please enter a valid email adress";
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
        hintText: 'email',
        hintStyle: TextStyle(
          color: Color(0xff394c66),
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
        ),
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        labelText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
    );

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: _isVisible ? false : true,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "This field is required";
        }
        if (value.trim().length < 8) {
          return 'Password must be at least 8 characters in length';
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
      onTap: _updateStatus,
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
        contentPadding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        labelText: 'Password',
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
    );

    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      obscureText: true,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return "This field is required";
        }
        if (value.trim().length < 8) {
          return 'Password must be at least 8 characters in length';
        }
        if (value != passwordEditingController.text) {
          return "No match";
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
        hintText: 'confirm password',
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
        contentPadding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        labelText: 'Confirm Password',
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
    );

    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(16.0),
      color: const Color(0XFF2356F6),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        minWidth: MediaQuery.of(context).size.width,
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
        onPressed: () {
          if (_fromKey.currentState!.validate()) {
            return;
          }
        },
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
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
          padding: const EdgeInsets.fromLTRB(36.0, 0.0, 36.0, 108.0),
          child: Form(
            key: _fromKey,
            child: Column(
              //(Wrap) direction: Axis.vertical, spacing, runSpacing, alignment,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                      child: Image.asset('images/yartu1.jpg'),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                nameField,
                const SizedBox(height: 10),
                surnameField,
                const SizedBox(height: 10),
                usernameField,
                const SizedBox(height: 10),
                emailField,
                const SizedBox(height: 10),
                passwordField,
                const SizedBox(height: 10),
                confirmPasswordField,
                const SizedBox(height: 10),
                signUpButton,
              ],
            ),
          ),
        ),
      ),
    );
  }
} 

