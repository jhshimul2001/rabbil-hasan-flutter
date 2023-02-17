import 'package:flutter/material.dart';

class Alerts extends StatefulWidget {
  const Alerts({Key? key}) : super(key: key);

  @override
  State<Alerts> createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  
  mySnackbar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)));
  }
  
  myAlert(context){
    return showDialog(
        context: context, 
        builder: (BuildContext context){
          return Expanded(child: AlertDialog(
             title: Text('Alert dialouge'),
            content: Text("do you want to delete"),
            actions: [
              TextButton(onPressed:(){
                mySnackbar('delete messages', context);
                Navigator.of(context).pop();
              } , child: Text("yes") ),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("no"))
            ],
          ));
        });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("click me"), onPressed: (){myAlert(context);},),
      ),
    );
  }
}
