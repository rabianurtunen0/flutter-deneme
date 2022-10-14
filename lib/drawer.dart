import 'package:flutter/material.dart';
import 'package:yartu_application/dashboard.dart';
import 'package:yartu_application/messages.dart';
import 'package:yartu_application/details.dart';
import 'package:yartu_application/folders.dart';
import 'package:yartu_application/settings.dart';

class DrawerBar extends StatefulWidget {
  const DrawerBar({Key? key}) : super(key: key);

  @override
  State<DrawerBar> createState() => _DrawerBarState();
}

class _DrawerBarState extends State<DrawerBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 10.0,
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DashBoard()));
              },
              child: Row(
                children: [
                  Image.asset(
                    'images/dashboard.dart',
                    color: const Color(0XFF394C66),
                  ),
                  const Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF394C66),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 10.0,
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Messages()));
              },
              child: Row(
                children: [
                  Image.asset(
                    'images/messages.dart',
                    color: const Color(0XFF394C66),
                  ),
                  const Text(
                    'Messages',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF394C66),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 10.0,
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Details()));
              },
              child: Row(
                children: [
                  Image.asset(
                    'images/details.dart',
                    color: const Color(0XFF394C66),
                  ),
                  const Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF394C66),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 10.0,
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Folders()));
              },
              child: Row(
                children: [
                  Image.asset(
                    'images/folders.dart',
                    color: const Color(0XFF394C66),
                  ),
                  const Text(
                    'Folders',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF394C66),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 10.0,
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
              child: Row(
                children: [
                  Image.asset(
                    'images/settings.dart',
                    color: const Color(0XFF394C66),
                  ),
                  const Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF394C66),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
