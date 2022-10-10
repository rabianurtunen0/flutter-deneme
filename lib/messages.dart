import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  int _chosen = 0;

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
                        _chosen == 0 ? const Color(0XFF3663F2) : Colors.white,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: _chosen == 0
                              ? const Color(0XFF3663F2)
                              : const Color(0XFF9AA1B4),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)))),
                      onPressed: () {
                        setState(() {
                          _chosen = 0;
                        });
                      },
                      child: Text(
                        'TÜMÜ',
                        style: TextStyle(
                          color: _chosen == 0
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
                        _chosen == 1 ? const Color(0XFF3663F2) : Colors.white,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: _chosen == 1
                              ? const Color(0XFF3663F2)
                              : const Color(0XFF9AA1B4),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)))),
                      onPressed: () {
                        setState(() {
                          _chosen = 1;
                        });
                      },
                      child: Text(
                        'OKUNMAMIŞ',
                        style: TextStyle(
                          color: _chosen == 1
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
                        _chosen == 2 ? const Color(0XFF3663F2) : Colors.white,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: _chosen == 2
                              ? const Color(0XFF3663F2)
                              : const Color(0XFF9AA1B4),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)))),
                      onPressed: () {
                        setState(() {
                          _chosen = 2;
                        });
                      },
                      child: Text(
                        'YILDIZLI',
                        style: TextStyle(
                          color: _chosen == 2
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
              margin: const EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 4.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    primary: const Color(0XFF9AA1B4),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)))),
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      margin: const EdgeInsets.all(0.0),
                      child: const Card(
                        color: Color(0XFF3663F2),
                        child: Center(
                          child: Text(
                            'AS',
                            style: TextStyle(
                              color: Color(0XFFE2E9F4),
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width:158 ,
                      margin: const EdgeInsets.fromLTRB(8.0, 16.0, 0.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Task Examples',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Container(

                            margin:
                                const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                            child: const Text(
                              'Dear, yartu team lorem ipsum dolor sit amet 659858',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 8,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(17.0, 0.0, 0.0, 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(
                                  54.0, 0.0, 0.0, 1.0),
                              child: const Icon(
                                CupertinoIcons.paperclip,
                                color: Color(0XFF9AA1B4),
                                size: 10,
                              ),
                            ),
                            const Text(
                              "1 November 2021 • 14.55",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 6,
                                color: Color(0XFF394C66),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: const Text(
                                "cihat@yartu.io",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 6,
                                    color: Color(0XFF394C66)),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(
              width: 335,
              height: 80,
              margin: const EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 4.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    primary: const Color(0XFF9AA1B4),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)))),
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      margin: const EdgeInsets.all(0.0),
                      child: const Card(
                        color: Color(0XFF3663F2),
                        child: Center(
                          child: Text(
                            'ÖŞ',
                            style: TextStyle(
                              color: Color(0XFFE2E9F4),
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 158,
                      margin: const EdgeInsets.fromLTRB(8.0, 16.0, 0.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Landing pages design',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                            child: const Text(
                              'Dear, yartu team lorem ipsum dolor sit amet 659858',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 8,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(17.0, 0.0, 0.0, 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(
                                  54.0, 0.0, 0.0, 1.0),
                              child: const Icon(
                                CupertinoIcons.paperclip,
                                color: Color(0XFF9AA1B4),
                                size: 10,
                              ),
                            ),
                            const Text(
                              "1 November 2021 • 14.55",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 6,
                                color: Color(0XFF394C66),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: const Text(
                                "cihat@yartu.io",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 6,
                                    color: Color(0XFF394C66)),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(
              width: 335,
              height: 80,
              margin: const EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 4.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    primary: const Color(0XFF9AA1B4),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)))),
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      margin: const EdgeInsets.all(0.0),
                      child: Image.asset('images/man.png'),
                    ),
                    Container(
                      width: 158,
                      margin: const EdgeInsets.fromLTRB(8.0, 16.0, 0.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Yartu Ui',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                            child: const Text(
                              'Dear, yartu team lorem ipsum dolor sit amet 659858',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 8,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(17.0, 0.0, 0.0, 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(
                                  54.0, 0.0, 0.0, 1.0),
                              child: const Icon(
                                CupertinoIcons.paperclip,
                                color: Color(0XFF9AA1B4),
                                size: 10,
                              ),
                            ),
                            const Text(
                              "1 November 2021 • 14.55",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 6,
                                color: Color(0XFF394C66),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: const Text(
                                "cihat@yartu.io",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 6,
                                    color: Color(0XFF394C66)),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(
              width: 335,
              height: 80,
              margin: const EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 18.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    primary: const Color(0XFF9AA1B4),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)))),
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      margin: const EdgeInsets.all(0.0),
                      child: const Card(
                        color: Color(0XFF3663F2),
                        child: Center(
                          child: Text(
                            'CH',
                            style: TextStyle(
                              color: Color(0XFFE2E9F4),
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 158,
                      margin: const EdgeInsets.fromLTRB(8.0, 16.0, 0.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Fundementals of ai',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                            child: const Text(
                              'Dear, yartu team lorem ipsum dolor sit amet 659858',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 8,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(17.0, 0.0, 0.0, 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(
                                  54.0, 0.0, 0.0, 1.0),
                              child: const Icon(
                                CupertinoIcons.paperclip,
                                color: Color(0XFF9AA1B4),
                                size: 10,
                              ),
                            ),
                            const Text(
                              "1 November 2021 • 14.55",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 6,
                                color: Color(0XFF394C66),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: const Text(
                                "cihat@yartu.io",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 6,
                                    color: Color(0XFF394C66)),
                              ),
                            ),
                          ],
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
