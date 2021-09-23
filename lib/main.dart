import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/screens/calls.dart';
import 'package:flutter_tab_bar/screens/chats.dart';
import 'package:flutter_tab_bar/screens/profile.dart';
import 'package:flutter_tab_bar/screens/setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: MyHomePage(),
      theme: CupertinoThemeData(
          brightness: Brightness.light, primaryColor: Color(0xFF08C187)),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //
  // เพิ่ม หน้า TabBar
  var screens = [
    Chats(),
    Calls(),
    Profile(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        resizeToAvoidBottomInset: true,
        tabBar: CupertinoTabBar(
          items: [
            // เพิ่ม แท็ปบาร์
            BottomNavigationBarItem(
              label: "หน้าแรก",
              icon: Icon(CupertinoIcons.home), // icon chat
            ),
            BottomNavigationBarItem(
              label: "ติดต่อเรา",
              icon: Icon(CupertinoIcons.phone), // icon chat
            ),
            BottomNavigationBarItem(
              label: "โปรไฟล์",
              icon: Icon(CupertinoIcons.profile_circled), // icon chat
            ),
            BottomNavigationBarItem(
              label: "ตั้งค่า",
              icon: Icon(CupertinoIcons.settings_solid), // icon chat
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return screens[index];
        },
      ),
    );
  }
}
