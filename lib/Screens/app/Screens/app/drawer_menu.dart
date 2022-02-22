import 'package:flutter/material.dart';
import 'package:flutter_drawer/main.dart';

// ignore: unused_import
import '../../main.dart';
import '../../profile.dart';
import 'main.dart';
import 'profile.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          // ignore: prefer_const_constructors
          UserAccountsDrawerHeader(
            accountName: const Text('porramate suksta'),
            accountEmail: const Text('bporramate_sukata@hotmail.com'),
            currentAccountPicture: const CircleAvatar(
              child: FlutterLogo(
                size: 40.0,
              ),
              backgroundColor: Colors.white,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('หน้าแรก'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const MyHomePage(title: "My Home Page")),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text('ข้อมูลส่วนตัว'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('ออกจากระบบ'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
