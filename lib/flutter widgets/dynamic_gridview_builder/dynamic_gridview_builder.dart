import 'package:flutter/material.dart';

class Dynamic_gridview_builder extends StatefulWidget {
  const Dynamic_gridview_builder({Key? key}) : super(key: key);

  @override
  State<Dynamic_gridview_builder> createState() => _Dynamic_gridview_builderState();
}

class _Dynamic_gridview_builderState extends State<Dynamic_gridview_builder> {

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
        title: Text("Dynamic gridview builder"),
      ),
      body: GridView.builder(
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
        }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),
      )
    );
  }
}
