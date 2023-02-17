import 'package:flutter/material.dart';
import 'package:rabbilhasan/flutter%20widgets/alert%20dialouge/alert_dialouge.dart';
import 'package:rabbilhasan/flutter%20widgets/appbar/appbar.dart';
import 'package:rabbilhasan/flutter%20widgets/bottomnavigationbar/bottomnavigationbar.dart';
import 'package:rabbilhasan/flutter%20widgets/cards/card.dart';
import 'package:rabbilhasan/flutter%20widgets/container/container.dart';
import 'package:rabbilhasan/flutter%20widgets/drawer/drawer.dart';
import 'package:rabbilhasan/flutter%20widgets/dynamic%20Listview%20builder/dynamic_Listview_builder.dart';
import 'package:rabbilhasan/flutter%20widgets/dynamic_gridview_builder/dynamic_gridview_builder.dart';
import 'package:rabbilhasan/flutter%20widgets/floatingActionbutton/floatingactionbutton.dart';
import 'package:rabbilhasan/flutter%20widgets/flutter%20button/flutter_button.dart';
import 'package:rabbilhasan/flutter%20widgets/row/row.dart';
import 'package:rabbilhasan/flutter%20widgets/simple%20form/simple_form.dart';
import 'package:rabbilhasan/flutter%20widgets/tabbar%20with%20fragement/tabbar_with_fragement.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter"),
        centerTitle: true,
      ),
      body: Container(
       decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xffFF5F6D),
                Color(0xffFFC371)
              ],
            )
        ),
        child: ListView(
          children: [
            SizedBox(height: 20,),
            Container(
              margin:EdgeInsets.only(left: 130,right: 130),
              height: 50,
              child: MaterialButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=> Appbars()));
              },child: Text("Appbar"),color: Colors.blue,),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 130.0,right: 130.0),
              child: Container(
                height: 50,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> FloatingButton()));
                },child: Text("floatingButton"),color: Colors.blue,),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 130.0,right: 130.0),
              child: Container(
                height: 50,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> bottomnavigationbars()));
                },child: Text("bottomnavigationbars"),color: Colors.blue,),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 130.0,right: 130.0),
              child: Container(
                height: 50,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> drawers_part()));
                },child: Text("drawers"),color: Colors.blue,),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 130.0,right: 130.0),
              child: Container(
                height: 50,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Containers()));
                },child: Text("containers"),color: Colors.blue,),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 130.0,right: 130.0),
              child: Container(
                height: 50,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Rows()));
                },child: Text("rows"),color: Colors.blue,),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 130.0,right: 130.0),
              child: Container(
                height: 50,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Buttons()));
                },child: Text("types of button"),color: Colors.blue,),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 130.0,right: 130.0),
              child: Container(
                height: 50,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Alerts()));
                },child: Text("alerts"),color: Colors.blue,),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 130.0,right: 130.0),
              child: Container(
                height: 50,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Simple_form()));
                },child: Text("simpleFrom"),color: Colors.blue,),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 130.0,right: 130.0),
              child: Container(
                height: 50,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> dynamic_Listview_builder()));
                },child: Text("dynamicListviewbuilder"),color: Colors.blue,),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 130.0,right: 130.0),
              child: Container(
                height: 50,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Dynamic_gridview_builder()));
                },child: Text("dynamicgridviewbuilder"),color: Colors.blue,),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 130.0,right: 130.0),
              child: Container(
                height: 50,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> TabbarwithFragement()));
                },child: Text("tabbar with fragement"),color: Colors.blue,),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 130.0,right: 130.0),
              child: Container(
                height: 50,
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> card()));
                },child: Text("card"),color: Colors.blue,),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
