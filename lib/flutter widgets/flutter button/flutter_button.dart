import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {

    // custom buttom design
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(25),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))
        )
    );


    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: () {}, child: Text("TextButton")),
          ElevatedButton(onPressed: () {}, child: Text("ElevatedButton",),style: buttonStyle,),
          OutlinedButton(onPressed: () {}, child: Text("OutlinedButton")),
          MaterialButton(onPressed: () {}, child: Text("MaterialButton")),
        ],
      ),
    );
  }
}
