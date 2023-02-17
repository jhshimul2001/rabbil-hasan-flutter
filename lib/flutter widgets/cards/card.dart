import 'package:flutter/material.dart';

class card extends StatefulWidget {
  const card({Key? key}) : super(key: key);

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           title: Text('card'),
           centerTitle: true,
         ),
      body: Center(
        child: Card(
          color: Colors.green,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
         // shadowColor: Colors.green,
          elevation: 50,
            child: SizedBox(
              height: 250,
              width: 250,
              child: Center(child: Text("card")),
            ),
        ),
      )
    );
  }
}
