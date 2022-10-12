import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int _selectedItems = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Container(
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
                    height: 40,
                    width: 112,
                    padding: const EdgeInsets.fromLTRB(16.0, 8.0, 0.0, 0.0),
                    child: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0XFF3663F2),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: const Color(0XFF3663F2),
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                        ),
                        onPressed: () => onButtonPressed(),
                        child: Row(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
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
              margin: const EdgeInsets.symmetric(vertical: 200.0),
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

  void onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 150,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 50,
                  margin: const EdgeInsets.all(0.0),
                  child: const ListTile(
                    leading: Text(
                      "Upload",
                      style: TextStyle(
                        color: Color(0XFF394C66),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  color: _selectedItems == 0
                      ? const Color(0XFFF4F5F6)
                      : Colors.white,
                  child: ClipPath(
                    child: Container(
                      height: 40,
                      alignment: Alignment.topRight,
                      child: ListTile(
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        leading: Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          child: const ImageIcon(
                            AssetImage('images/files.png'),
                            color: Color(0XFF9AA1B4),
                            size: 18,
                          ),
                        ),
                        title: Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          child: const Text(
                            'Files',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFF394C66),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedItems = 0;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  color: _selectedItems == 1
                      ? const Color(0XFFF4F5F6)
                      : Colors.white,
                  child: ClipPath(
                    child: Container(
                      height: 40,
                      alignment: Alignment.topRight,
                      child: ListTile(
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        leading: Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          child: const ImageIcon(
                            AssetImage('images/folders.png'),
                            color: Color(0XFF9AA1B4),
                            size: 18,
                          ),
                        ),
                        title: Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          child: const Text(
                            'Folders',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFF394C66),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedItems = 1;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
