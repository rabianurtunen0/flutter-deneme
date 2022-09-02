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
                  height: 48,
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
                  margin: const EdgeInsets.symmetric(
                    horizontal: 4.0,
                    vertical: 4.0,
                  ),
                  padding: const EdgeInsets.fromLTRB(3.0, 4.0, 3.0, 4.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0XFFEB6363),
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Container(
                    width: 137,
                    height: 20,
                    margin: const EdgeInsets.symmetric(
                      vertical: 6.0,
                      horizontal: 8.0,
                    ),
                    child: const Text(
                      'jhondoe@gmail.com',
                      style: TextStyle(
                        color: Color(0xff394c66),
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
                          'Please enter a valid email',
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
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: const EdgeInsets.all(0.0),
                  child: Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(5.0, 28.0, 120.0, 2.0),
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
                  margin: const EdgeInsets.symmetric(
                    horizontal: 4.0,
                    vertical: 4.0,
                  ),
                  padding: const EdgeInsets.fromLTRB(3.0, 4.0, 3.0, 4.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0XFFEB6363),
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    width: 137,
                    height: 20,
                    margin: const EdgeInsets.symmetric(
                      vertical: 6.0,
                      horizontal: 8.0,
                    ),
                    child: Row(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 3.0, 0.0),
                          child: Image(
                            image: AssetImage('images/icons2.png'),
                            color: Color(0XFF394C66),
                            width: 6,
                            height: 6,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 3.0, 0.0),
                            child: Image(
                              image: AssetImage('images/icons2.png'),
                              color: Color(0XFF394C66),
                              width: 6,
                              height: 6,
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 3.0, 0.0),
                            child: Image(
                              image: AssetImage('images/icons2.png'),
                              color: Color(0XFF394C66),
                              width: 6,
                              height: 6,
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 3.0, 0.0),
                            child: Image(
                              image: AssetImage('images/icons2.png'),
                              color: Color(0XFF394C66),
                              width: 6,
                              height: 6,
                            )),
                        Padding(
                            padding: EdgeInsets.fromLTRB(210.0, 0.0, 0.0, 0.0),
                            child: Image(
                              image: AssetImage('images/icons3.png'),
                              color: Color(0XFF9AA1B4),
                              width: 20,
                              height: 24,
                            )),
                      ],
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
                          'Please enter a valid password',
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
                  )),
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
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(13.0, 0.0, 3.0, 0.0),
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
                      Text(
                        'Create account',
                        style: TextStyle(
                          color: Color(0XFF2356F6),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                          height: 1.5,
                        ),
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
}


/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/