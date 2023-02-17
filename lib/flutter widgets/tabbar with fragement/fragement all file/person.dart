import 'package:flutter/material.dart';

class person extends StatelessWidget {
  const person({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(child: Text('Person',style: TextStyle(fontSize: 30),)),
      ),
    );
  }
}