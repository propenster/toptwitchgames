import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    const Text("Remove Ads"),
    const Text("Settings"),
    const Text("Rate Us"),
    const Text("Share with friends"),
    const Text("Feeback"),
    const Text("Help"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: _widgetOptions[_selectedIndex]
      ),


    );
  }
}
