import 'package:flutter/material.dart';
import 'package:td2/card1.dart';
import 'package:td2/card2.dart';
import 'package:td2/card3.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    Ecran1(), Ecran2(), Ecran3()
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Application_TD2', style: Theme.of(context).textTheme.headlineLarge,),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Card'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'Card2'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'Card3'
          )
        ],
      ),
    );
  }
  void _onItemTapped(int value) {
    setState((){
      _selectedIndex = value;
    });
  }
}
