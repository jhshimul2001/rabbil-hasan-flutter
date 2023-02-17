import 'package:flutter/material.dart';

class Appbars extends StatefulWidget {
  const Appbars({Key? key}) : super(key: key);

  @override
  State<Appbars> createState() => _AppbarsState();
}

class _AppbarsState extends State<Appbars> {
mySnackbar(message,context){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
  Text(message)));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar",style: TextStyle(fontSize: 25),),
        centerTitle: true,
        // titleSpacing: 40,
        toolbarHeight: 70,
        toolbarOpacity: 1,
        elevation: 10,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              mySnackbar("I am comment", context);
            },
            icon: Icon(
              Icons.comment,
              color: Colors.blueGrey,
            ),
            tooltip: "comment",
            hoverColor: Colors.green,
          ),
          IconButton(
              onPressed: () {
                mySnackbar("I am account", context);
              },
              icon: Icon(
                Icons.account_circle,
                color: Colors.amber,
              )),
          IconButton(
              onPressed: () {
                mySnackbar("I am code", context);
              },
              icon: Icon(
                Icons.code,
                color: Colors.lime,
              )),
          IconButton(
              onPressed: () {
                mySnackbar("I am add", context);
              },
              icon: Icon(
                Icons.add,
                color: Colors.grey,
              )),
        ],
        leading: IconButton(
          onPressed: () {
            mySnackbar("I am search", context);
          },
          icon: Icon(Icons.search),
        ),
      ),
    );
  }
}
