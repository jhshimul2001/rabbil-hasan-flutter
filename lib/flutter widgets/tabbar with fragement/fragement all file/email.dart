import 'package:flutter/material.dart';

class email extends StatelessWidget {
  const email({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(child: Text('Email',style: TextStyle(fontSize: 30),)),
      ),
    );
  }
}