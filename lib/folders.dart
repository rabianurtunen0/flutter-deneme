import 'package:flutter/material.dart';

class Folders extends StatefulWidget {
  const Folders({Key? key}) : super(key: key);

  @override
  State<Folders> createState() => _FoldersState();
}

class _FoldersState extends State<Folders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    width: 80,
                    padding: const EdgeInsets.all(0.0),
                    child: const Text(
                      "Items",
                      style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 120,
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 0.0, 0.0),
                    child: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0XFF3663F2),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: const Color(0XFF3663F2),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                              child: const ImageIcon(
                                AssetImage('images/upload.png'),
                                color: Colors.white,
                                size: 14,
                              ),
                            ),
                            const Text(
                              "Upload",
                              style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Image.asset('images/file.png'),
                  const Text(
                  "Wow such a empty space.",
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),


                ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
