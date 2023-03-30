import 'package:flutter/material.dart';
import 'package:toptwitchgames/screens/game_screen.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    //const Text("Games"),
    const GameScreen(),
    const Text("Movies"),
    const Text("Contact")
  ];


  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    print("The selected index ${_selectedIndex} was tapped");

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions[_selectedIndex],

      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        elevation: 10,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.indigo,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.videogame_asset_rounded, ), label: "Games"),
          BottomNavigationBarItem(icon: const Icon(Icons.movie_sharp), label: "Movies"),
          BottomNavigationBarItem(icon: const Icon(Icons.contact_mail), label: "Contact"),
        ],

      ),
    );
  }
}
