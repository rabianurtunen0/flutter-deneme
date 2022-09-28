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
  final GlobalKey<ScaffoldState> _drawerScaffoldKey = GlobalKey();
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            if (_drawerScaffoldKey.currentState?.isDrawerOpen == false) {
              _drawerScaffoldKey.currentState?.openDrawer();
            } else {
              _drawerScaffoldKey.currentState?.openEndDrawer();
            }
          },
          icon: const Icon(
            Icons.menu,
            color: Color(0XFF9AA1B4),
          ),
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
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22.0, 0.0, 0.0, 9.0),
                    child: SizedBox(
                      width: 30,
                      height: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 6,
                            height: 6,
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
        drawer: Drawer(
          key: _drawerScaffoldKey,
          elevation: 0,
          width: 215,
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              ListTile(
                leading: Image.asset(
                  'images/dashboard.png',
                  color: const Color(0XFF394C66),
                ),
                title: const Text(
                  'Dashboard',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0XFF394C66),
                  ),
                ),
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
              ),
              ListTile(
                leading: Image.asset(
                  'images/messages.png',
                  color: const Color(0XFF394C66),
                ),
                title: const Text(
                  'Messages',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0XFF394C66),
                  ),
                ),
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
              ),
              ListTile(
                leading: Image.asset(
                  'images/details.png',
                  color: const Color(0XFF394C66),
                ),
                title: const Text(
                  'Details',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0XFF394C66),
                  ),
                ),
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
              ),
              ListTile(
                leading: Image.asset(
                  'images/folders.png',
                  color: const Color(0XFF394C66),
                ),
                title: const Text(
                  'Folders',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0XFF394C66),
                  ),
                ),
                onTap: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
              ),
              ListTile(
                leading: Image.asset(
                  'images/settings.png',
                  color: const Color(0XFF394C66),
                ),
                title: const Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0XFF394C66),
                  ),
                ),
                onTap: () {
                  setState(() {
                    _selectedIndex = 4;
                  });
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: const Color(0XFFEFF4FA),
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTappend,
            items: [
              BottomNavigationBarItem(
                activeIcon: Ink(
                  decoration: BoxDecoration(
                    border: Border.all( color: const Color(0XFF3663F2), width: 2.0),
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
                    border: Border.all( color: const Color(0XFF3663F2), width: 2.0),
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
                    border: Border.all( color: const Color(0XFF3663F2), width: 2.0),
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
                    border: Border.all( color: const Color(0XFF3663F2), width: 2.0),
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
                    border: Border.all( color: const Color(0XFF3663F2), width: 2.0),
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
    );
  }
}
