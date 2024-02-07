import 'package:flutter/material.dart';
import 'package:td2/mytheme.dart';
import 'package:td2/home.dart';

void main() {
  runApp(const TD2());
}

class TD2 extends StatelessWidget{
  const TD2({super.key});

  @override
  Widget build(BuildContext context){
    final theme = MyTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'TD2',
      home: Home(),
    );
  }
}