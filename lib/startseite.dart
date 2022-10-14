import 'package:flutter/material.dart';
import 'package:yartu_application/dashboard.dart';
import 'package:yartu_application/details.dart';
import 'package:yartu_application/folders.dart';
import 'package:yartu_application/messages.dart';
import 'package:yartu_application/settings.dart';

class StartSeite extends StatefulWidget {
  const StartSeite({Key? key}) : super(key: key);

  @override
  State<StartSeite> createState() => _StartSeiteState();
}

class _StartSeiteState extends State<StartSeite> {
  final GlobalKey<ScaffoldState> _drawerScaffoldKey1 =
      GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _drawerScaffoldKey2 =
      GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    DashBoard(),
    Messages(),
    Details(),
    Folders(),
    Settings(),
  ];

  void _onItemTappend(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerScaffoldKey1,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Color(0XFF9AA1B4),
          ),
          onPressed: () {
            if (_drawerScaffoldKey2.currentState?.isDrawerOpen == true) {
              Navigator.pop(context);
            } else {
              _drawerScaffoldKey2.currentState?.openDrawer();
            }
          },
        ),
        title: SizedBox(
          width: 375,
          height: 50,
          child: Container(
            margin: const EdgeInsets.fromLTRB(0.0, 8.0, 20.0, 8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(
                  fontSize: 16.0,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 16,
                ),
                contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 10.0),
            child: SizedBox(
              width: 32,
              height: 32,
              child: Stack(
                children: [
                  const CircleAvatar(
                    backgroundColor: Color(0XFFF1AE04),
                    child: Text(
                      'RT',
                      //nameValue.trim() + surnameValue.trim(),
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22.0, 2.0, 0.0, 6.0),
                    child: SizedBox(
                      width: 30,
                      height: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                          child: SizedBox(
                            width: 7,
                            height: 7,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Scaffold(
        key: _drawerScaffoldKey2,
        drawer: SizedBox(
          width: 225,
          child: Drawer(
            elevation: 0,
            width: 215,
            backgroundColor: const Color(0XFFF8FAFD),
            child: ListView(
              children: [
                const Divider(height: 5, color: Color(0XFFF8FAFD)),
                Card(
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  child: ClipPath(
                    child: Container(
                      height: 40,
                      decoration: _selectedIndex == 0
                          ? const BoxDecoration(
                              color: Color(0XFFEFF4FA),
                              border: Border(
                                left: BorderSide(
                                    color: Color(0XFF3663F2), width: 3),
                              ),
                            )
                          : const BoxDecoration(
                              color: Color(0XFFF8FAFD),
                              border: Border(
                                left: BorderSide(
                                    color: Color(0XFFEFF4FA), width: 3),
                              ),
                            ),
                      child: ListTile(
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        leading: Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          child: ImageIcon(
                            const AssetImage('images/dashboard.png'),
                            color: _selectedIndex == 0
                                ? const Color(0XFF3663F2)
                                : const Color(0XFF394C66),
                          ),
                        ),
                        title: Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          child: Text(
                            'Dashboard',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: _selectedIndex == 0
                                  ? const Color(0XFF3663F2)
                                  : const Color(0XFF394C66),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedIndex = 0;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const Divider(height: 5, color: Color(0XFFF8FAFD)),
                Card(
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  child: ClipPath(
                    child: Container(
                      height: 40,
                      decoration: _selectedIndex == 1
                          ? const BoxDecoration(
                              color: Color(0XFFEFF4FA),
                              border: Border(
                                left: BorderSide(
                                    color: Color(0XFF3663F2), width: 3),
                              ),
                            )
                          : const BoxDecoration(
                              color: Color(0XFFF8FAFD),
                              border: Border(
                                left: BorderSide(
                                    color: Color(0XFFEFF4FA), width: 3),
                              ),
                            ),
                      child: ListTile(
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        leading: Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          child: ImageIcon(
                            const AssetImage('images/messages.png'),
                            color: _selectedIndex == 1
                                ? const Color(0XFF3663F2)
                                : const Color(0XFF394C66),
                          ),
                        ),
                        title: Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          child: Text(
                            'Messages',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: _selectedIndex == 1
                                  ? const Color(0XFF3663F2)
                                  : const Color(0XFF394C66),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedIndex = 1;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const Divider(height: 5, color: Color(0XFFF8FAFD)),
                Card(
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  child: ClipPath(
                    child: Container(
                      height: 40,
                      decoration: _selectedIndex == 2
                          ? const BoxDecoration(
                              color: Color(0XFFEFF4FA),
                              border: Border(
                                left: BorderSide(
                                    color: Color(0XFF3663F2), width: 3),
                              ),
                            )
                          : const BoxDecoration(
                              color: Color(0XFFF8FAFD),
                              border: Border(
                                left: BorderSide(
                                    color: Color(0XFFEFF4FA), width: 3),
                              ),
                            ),
                      child: ListTile(
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        leading: Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          child: ImageIcon(
                            const AssetImage('images/details.png'),
                            color: _selectedIndex == 2
                                ? const Color(0XFF3663F2)
                                : const Color(0XFF394C66),
                          ),
                        ),
                        title: Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          child: Text(
                            'Details',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: _selectedIndex == 2
                                  ? const Color(0XFF3663F2)
                                  : const Color(0XFF394C66),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedIndex = 2;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const Divider(height: 5, color: Color(0XFFF8FAFD)),
                Card(
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  child: ClipPath(
                    child: Container(
                      height: 40,
                      decoration: _selectedIndex == 3
                          ? const BoxDecoration(
                              color: Color(0XFFEFF4FA),
                              border: Border(
                                left: BorderSide(
                                    color: Color(0XFF3663F2), width: 3),
                              ),
                            )
                          : const BoxDecoration(
                              color: Color(0XFFF8FAFD),
                              border: Border(
                                left: BorderSide(
                                    color: Color(0XFFEFF4FA), width: 3),
                              ),
                            ),
                      child: ListTile(
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        leading: Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          child: ImageIcon(
                            const AssetImage('images/folders.png'),
                            color: _selectedIndex == 3
                                ? const Color(0XFF3663F2)
                                : const Color(0XFF394C66),
                          ),
                        ),
                        title: Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          child: Text(
                            'Folders',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: _selectedIndex == 3
                                  ? const Color(0XFF3663F2)
                                  : const Color(0XFF394C66),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedIndex = 3;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const Divider(height: 5, color: Color(0XFFF8FAFD)),
                Card(
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  child: ClipPath(
                    child: Container(
                      height: 40,
                      decoration: _selectedIndex == 4
                          ? const BoxDecoration(
                              color: Color(0XFFEFF4FA),
                              border: Border(
                                left: BorderSide(
                                    color: Color(0XFF3663F2), width: 3),
                              ),
                            )
                          : const BoxDecoration(
                              color: Color(0XFFF8FAFD),
                              border: Border(
                                left: BorderSide(
                                    color: Color(0XFFEFF4FA), width: 3),
                              ),
                            ),
                      child: ListTile(
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        leading: Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          child: ImageIcon(
                            const AssetImage('images/settings.png'),
                            color: _selectedIndex == 4
                                ? const Color(0XFF3663F2)
                                : const Color(0XFF394C66),
                          ),
                        ),
                        title: Container(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                          child: Text(
                            'Settings',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: _selectedIndex == 4
                                  ? const Color(0XFF3663F2)
                                  : const Color(0XFF394C66),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedIndex = 4;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          height: 50,
          color: const Color(0XFFEFF4FA),
          padding: const EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 0.0),
          child: BottomNavigationBar(
            elevation: 0,
            showSelectedLabels: false,
            selectedFontSize: 0,
            backgroundColor: const Color(0XFFEFF4FA),
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTappend,
            items: [
              BottomNavigationBarItem(
                activeIcon: Ink(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0XFF3663F2), width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: ImageIcon(
                      AssetImage('images/dashboard.png'),
                      color: Color(0XFF3663F2),
                    ),
                  ),
                ),
                icon: const ImageIcon(
                  AssetImage('images/dashboard.png'),
                  color: Color(0XFF394C66),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Ink(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0XFF3663F2), width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: ImageIcon(
                      AssetImage('images/messages.png'),
                      color: Color(0XFF3663F2),
                    ),
                  ),
                ),
                icon: const ImageIcon(
                  AssetImage('images/messages.png'),
                  color: Color(0XFF394C66),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Ink(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0XFF3663F2), width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: ImageIcon(
                      AssetImage('images/details.png'),
                      color: Color(0XFF3663F2),
                    ),
                  ),
                ),
                icon: const ImageIcon(
                  AssetImage('images/details.png'),
                  color: Color(0XFF394C66),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Ink(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0XFF3663F2), width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: ImageIcon(
                      AssetImage('images/folders.png'),
                      color: Color(0XFF3663F2),
                    ),
                  ),
                ),
                icon: const ImageIcon(
                  AssetImage('images/folders.png'),
                  color: Color(0XFF394C66),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Ink(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0XFF3663F2), width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: ImageIcon(
                      AssetImage('images/settings.png'),
                      color: Color(0XFF3663F2),
                    ),
                  ),
                ),
                icon: const ImageIcon(
                  AssetImage('images/settings.png'),
                  color: Color(0XFF394C66),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
