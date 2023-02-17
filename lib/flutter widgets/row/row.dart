import 'package:flutter/material.dart';

class Rows extends StatefulWidget {
  const Rows({Key? key}) : super(key: key);

  @override
  State<Rows> createState() => _RowsState();
}

class _RowsState extends State<Rows> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               height: 80,
               width: 80,
               color: Colors.lime,
               child: Text("flutter"),
             ),
             SizedBox(width: 20,),
             Container(
               height: 80,
               width: 80,
               color: Colors.blue,
               child: Text("flutter"),
             ),
             SizedBox(width: 20,),
             Container(
               height: 80,
               width: 80,
               color: Colors.purple,
               child: Text("flutter"),
             ),
           ],
         ),
    );
  }
}
