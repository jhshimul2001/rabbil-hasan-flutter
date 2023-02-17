import 'package:flutter/material.dart';

class Simple_form extends StatefulWidget {
  const Simple_form({Key? key}) : super(key: key);

  @override
  State<Simple_form> createState() => _Simple_formState();
}

class _Simple_formState extends State<Simple_form> {
  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60),
      textStyle: TextStyle(fontSize: 20)
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("simple form"),
      ),
      body: ListView(
        children: [
          Padding(padding:  EdgeInsets.all(20.0), child: TextField(keyboardType: TextInputType.text, decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Enter your name'),),),
          Padding(padding:  EdgeInsets.all(20.0), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Enter your email address'),)),
          Padding(padding:  EdgeInsets.all(20.0), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Enter your password'),),),
          Padding(padding:  EdgeInsets.all(20.0), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Enter your phone number'),),),
          Padding(padding:  EdgeInsets.all(20.0), child: ElevatedButton(onPressed: (){},child: Text("Submit"),style: buttonStyle,)),
        ],
      )
    );
  }
}










