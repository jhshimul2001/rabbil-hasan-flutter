import 'package:flutter/material.dart';
import 'package:rabbilhasan/flutter%20widgets/tabbar%20with%20fragement/fragement%20all%20file/add.dart';
import 'package:rabbilhasan/flutter%20widgets/tabbar%20with%20fragement/fragement%20all%20file/bloodtype.dart';
import 'package:rabbilhasan/flutter%20widgets/tabbar%20with%20fragement/fragement%20all%20file/code.dart';
import 'package:rabbilhasan/flutter%20widgets/tabbar%20with%20fragement/fragement%20all%20file/contact.dart';
import 'package:rabbilhasan/flutter%20widgets/tabbar%20with%20fragement/fragement%20all%20file/email.dart';
import 'package:rabbilhasan/flutter%20widgets/tabbar%20with%20fragement/fragement%20all%20file/home.dart';
import 'package:rabbilhasan/flutter%20widgets/tabbar%20with%20fragement/fragement%20all%20file/person.dart';
import 'package:rabbilhasan/flutter%20widgets/tabbar%20with%20fragement/fragement%20all%20file/search.dart';

class TabbarwithFragement extends StatefulWidget {
  const TabbarwithFragement({Key? key}) : super(key: key);

  @override
  State<TabbarwithFragement> createState() => _TabbarwithFragementState();
}

class _TabbarwithFragementState extends State<TabbarwithFragement> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
         length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My app'),
          bottom: TabBar(
          isScrollable: true,
              tabs: [
            Tab(icon: Icon(Icons.home),text: 'home',),
            Tab(icon: Icon(Icons.search),text: 'search',),
            Tab(icon: Icon(Icons.contact_page),text: 'contact',),
            Tab(icon: Icon(Icons.person),text: 'person',),
            Tab(icon: Icon(Icons.code),text: 'code',),
            Tab(icon: Icon(Icons.email),text: 'email',),
            Tab(icon: Icon(Icons.bloodtype),text: 'bloodtype',),
            Tab(icon: Icon(Icons.add),text: 'add',),
          ]),
        ),
        body: TabBarView(
          physics: ScrollPhysics(),
            children: [
          home(),
          search(),
          contact(),
          person(),
          code(),
          email(),
          bloodtype(),
          add()
        ]),
      ),
    );
  }
}
