import 'package:flutter/material.dart';
import 'package:rabbilhasan/flutter%20widgets/pages/one.dart';
import 'package:rabbilhasan/flutter%20widgets/pages/three.dart';
import 'package:rabbilhasan/flutter%20widgets/pages/two.dart';

class bottomnavigationbars extends StatefulWidget {
  const bottomnavigationbars({Key? key}) : super(key: key);

  @override
  State<bottomnavigationbars> createState() => _bottomnavigationbarsState();
}

class _bottomnavigationbarsState extends State<bottomnavigationbars> {
  MySnack(message,context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message)));
  }
  var _currentindex = 0;

  final pages =[
    one(),
    two(),
    three()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottomnavigationbar"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        currentIndex: _currentindex,
        selectedLabelStyle: TextStyle(fontSize: 18),
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),

          BottomNavigationBarItem(icon: Icon(Icons.message),label: "message"),

          BottomNavigationBarItem(icon: Icon(Icons.code),label: "code"),
        ],
        // onTap: (int index){
        //     if(index == 0){
        //       Navigator.push(context, MaterialPageRoute(builder: (context)=> one()));
        //     }else if(index == 1){
        //       Navigator.push(context, MaterialPageRoute(builder: (context)=> two()));
        //     }else if(index == 2){
        //       Navigator.push(context, MaterialPageRoute(builder: (context)=> three()));
        //     }
        // },
        onTap: (index){
          setState(() {
            _currentindex = index;
          });
        },
      ),
      body: pages[_currentindex],
    );
  }
}
