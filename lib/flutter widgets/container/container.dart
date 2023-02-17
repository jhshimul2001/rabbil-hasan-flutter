import 'package:flutter/material.dart';

class Containers extends StatefulWidget {
  const Containers({Key? key}) : super(key: key);

  @override
  State<Containers> createState() => _ContainersState();
}

class _ContainersState extends State<Containers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("container"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(20),
        height: 150,
        width: 150,
        alignment: Alignment.center,
        child: Text('flutter',textAlign: TextAlign.end,),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          border: Border.all(
            color: Colors.lime,
            width: 1
          ),
        ),
      ),
    );
  }
}
