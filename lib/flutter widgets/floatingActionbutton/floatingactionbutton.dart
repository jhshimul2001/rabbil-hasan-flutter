import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  mySnack(messages,context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(messages)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Floating action button"),),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.code),
        backgroundColor: Colors.green,
        onPressed: () {
          mySnack("I am floatingactionbutton", context);
        },
      ),
    );
  }
}
