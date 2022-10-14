import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _chosenn = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 120,
                  padding: const EdgeInsets.fromLTRB(16.0, 4.0, 0.0, 0.0),
                  child: Material(
                    elevation: 0,
                    borderRadius: BorderRadius.circular(8.0),
                    color:
                        _chosenn == 0 ? const Color(0XFF3663F2) : Colors.white,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: _chosenn == 0
                              ? const Color(0XFF3663F2)
                              : const Color(0XFF9AA1B4),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)))),
                      onPressed: () {
                        setState(() {
                          _chosenn = 0;
                        });
                      },
                      child: Text(
                        'All',
                        style: TextStyle(
                          color: _chosenn == 0
                              ? Colors.white
                              : const Color(0XFF9AA1B4),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 135,
                  padding: const EdgeInsets.fromLTRB(12.0, 4.0, 0.0, 0.0),
                  child: Material(
                    elevation: 0,
                    borderRadius: BorderRadius.circular(8.0),
                    color:
                        _chosenn == 1 ? const Color(0XFF3663F2) : Colors.white,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: _chosenn == 1
                              ? const Color(0XFF3663F2)
                              : const Color(0XFF9AA1B4),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)))),
                      onPressed: () {
                        setState(() {
                          _chosenn = 1;
                        });
                      },
                      child: Text(
                        'Shared',
                        style: TextStyle(
                          color: _chosenn == 1
                              ? Colors.white
                              : const Color(0XFF9AA1B4),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 120,
                  padding: const EdgeInsets.fromLTRB(12.0, 4.0, 0.0, 0.0),
                  child: Material(
                    elevation: 0,
                    borderRadius: BorderRadius.circular(8.0),
                    color:
                        _chosenn == 2 ? const Color(0XFF3663F2) : Colors.white,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: _chosenn == 2
                              ? const Color(0XFF3663F2)
                              : const Color(0XFF9AA1B4),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)))),
                      onPressed: () {
                        setState(() {
                          _chosenn = 2;
                        });
                      },
                      child: Text(
                        'Approval',
                        style: TextStyle(
                          color: _chosenn == 2
                              ? Colors.white
                              : const Color(0XFF9AA1B4),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 335,
              height: 80,
              margin: const EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 2.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    primary: const Color(0XFF9AA1B4),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)))),
                onPressed: () {},
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:
                              const EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 2.0),
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
                          margin:
                              const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 18.0),
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
                    Container(
                      margin: const EdgeInsets.fromLTRB(110.0, 0.0, 0.0, 0.0),
                      alignment: Alignment.centerRight,
                      width: 65,
                      height: 57,
                      decoration: BoxDecoration(
                        color: const Color(0XFF9AA1B4),
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage('images/picture.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 335,
              height: 80,
              margin: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 2.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    primary: const Color(0XFF9AA1B4),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)))),
                onPressed: () {},
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 2.0),
                          child: const Text(
                            "1 October 2021 • 18.34",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                          child: const Text(
                            "Yartu Tasks",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 10.0),
                          child: const Text(
                            "1 photo",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              color: Color(0XFF9AA1B4),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(120.0, 0.0, 0.0, 0.0),
                      alignment: Alignment.centerRight,
                      width: 65,
                      height: 57,
                      decoration: BoxDecoration(
                        color: const Color(0XFF9AA1B4),
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage('images/picture.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 335,
              height: 80,
              margin: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 2.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    primary: const Color(0XFF9AA1B4),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)))),
                onPressed: () {},
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 2.0),
                          child: const Text(
                            "1 December 2021 • 9.15",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                          child: const Text(
                            "Lorem ipsum",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 10.0),
                          child: const Text(
                            "4 pdfs",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              color: Color(0XFF9AA1B4),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(115.0, 0.0, 0.0, 0.0),
                      alignment: Alignment.centerRight,
                      width: 65,
                      height: 57,
                      decoration: BoxDecoration(
                        color: const Color(0XFF9AA1B4),
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage('images/picture.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 335,
              height: 80,
              margin: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 2.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    primary: const Color(0XFF9AA1B4),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)))),
                onPressed: () {},
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 2.0),
                          child: const Text(
                            "1 Jaunay 2022 • 12.11",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                          child: const Text(
                            "WHY & Benefits",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 10.0),
                          child: const Text(
                            "2 photos",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              color: Color(0XFF9AA1B4),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(130.0, 0.0, 0.0, 0.0),
                      alignment: Alignment.centerRight,
                      width: 65,
                      height: 57,
                      decoration: BoxDecoration(
                        color: const Color(0XFF9AA1B4),
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage('images/picture.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 335,
              height: 80,
              margin: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 2.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    primary: const Color(0XFF9AA1B4),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)))),
                onPressed: () {},
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 2.0),
                          child: const Text(
                            "13 Jaunary 2022 • 11.43",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
                          child: const Text(
                            "Public api",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 10.0),
                          child: const Text(
                            "1 photo",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              color: Color(0XFF9AA1B4),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(115.0, 0.0, 0.0, 0.0),
                      alignment: Alignment.centerRight,
                      width: 65,
                      height: 57,
                      decoration: BoxDecoration(
                        color: const Color(0XFF9AA1B4),
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage('images/picture.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
