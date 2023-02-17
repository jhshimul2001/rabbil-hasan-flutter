
import 'package:flutter/material.dart';

class dynamic_Listview_builder extends StatefulWidget {
  const dynamic_Listview_builder({Key? key}) : super(key: key);

  @override
  State<dynamic_Listview_builder> createState() => _dynamic_Listview_builderState();
}

class _dynamic_Listview_builderState extends State<dynamic_Listview_builder> {
  var myList = [
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
    {'img' : 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png','title' : 'flutter'},
  ];
  
  snack(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Listview Builder'),
        centerTitle: true,
      ),
         body: ListView.builder(
           itemCount: myList.length,
             itemBuilder: (context,index){
               return GestureDetector(
                 onTap: (){
                   snack(myList[index]['title']!, context);
                 },
                 child: Container(
                   height: 220,
                   margin: EdgeInsets.all(10.0),
                   child: Image.network(myList[index]['img']!,fit: BoxFit.fill,),
                 ),
               );
             }),
    );
  }
}
