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
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: const EdgeInsets.fromLTRB(25.0, 5.0, 0.0, 5.0),
                child: const Text(
                  "Folders",
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w900,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 165,
                  height: 55,
                  margin: const EdgeInsets.fromLTRB(25.0, 5.0, 0.0, 5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        primary: const Color(0XFF9AA1B4),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)))),
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 2.0),
                          child: const Text(
                            "1 November 2021 • 14.55",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 5.0),
                          child: const Text(
                            "Yartu Ui",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 165,
                  height: 55,
                  margin: const EdgeInsets.fromLTRB(10.0, 5.0, 25.0, 5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        primary: const Color(0XFF9AA1B4),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)))),
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 2.0),
                          child: const Text(
                            "1 November 2021 • 14.55",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 5.0),
                          child: const Text(
                            "Yartu Ui",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 165,
                  height: 55,
                  margin: const EdgeInsets.fromLTRB(25.0, 5.0, 0.0, 5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        primary: const Color(0XFF9AA1B4),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)))),
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 2.0),
                          child: const Text(
                            "1 November 2021 • 14.55",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 5.0),
                          child: const Text(
                            "Yartu Ui",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 165,
                  height: 55,
                  margin: const EdgeInsets.fromLTRB(10.0, 5.0, 25.0, 5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        primary: const Color(0XFF9AA1B4),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)))),
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 2.0),
                          child: const Text(
                            "1 November 2021 • 14.55",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 5.0),
                          child: const Text(
                            "Yartu Ui",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 165,
                  height: 55,
                  margin: const EdgeInsets.fromLTRB(25.0, 5.0, 0.0, 5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        primary: const Color(0XFF9AA1B4),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)))),
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 2.0),
                          child: const Text(
                            "1 November 2021 • 14.55",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 5.0),
                          child: const Text(
                            "Yartu Ui",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 165,
                  height: 55,
                  margin: const EdgeInsets.fromLTRB(10.0, 5.0, 25.0, 5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        primary: const Color(0XFF9AA1B4),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)))),
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 2.0),
                          child: const Text(
                            "1 November 2021 • 14.55",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 5.0),
                          child: const Text(
                            "Yartu Ui",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
