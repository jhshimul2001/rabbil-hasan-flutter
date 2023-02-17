import 'package:flutter/material.dart';

class drawers_part extends StatefulWidget {
  const drawers_part({Key? key}) : super(key: key);

  @override
  State<drawers_part> createState() => _drawers_partState();
}

class _drawers_partState extends State<drawers_part> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("drawer"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(
              padding: EdgeInsets.all(0.0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.green,
          ],
        )
      ),
                accountName: Text('Juvaid hasan shimul'),
                accountEmail: Text('shimuljhs869@gmail.com'),
                currentAccountPicture: Image.network("https://avatars.githubusercontent.com/u/119728892?s=400&u=5f5b72bc2650ebaafe7987705a1c81dbb1609d49&v=4"),

              ),
            ),

            ListTile(leading: Icon(Icons.home,color: Colors.lime,),title: Text("home",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),onTap: () {
              Navigator.pop(context);
            },),
            ListTile(leading: Icon(Icons.contact_page,color: Colors.amber,),title: Text("contact",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),),
            ListTile(leading: Icon(Icons.mark_unread_chat_alt,color: Colors.blueGrey,),title: Text("blog",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),),
            ListTile(leading: Icon(Icons.code,color: Colors.green,),title: Text("our courcec",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),),
            ListTile(leading: Icon(Icons.help,color: Colors.orange,),title: Text("help",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(
              padding: EdgeInsets.all(0.0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.green,
                      ],
                    )
                ),
                accountName: Text('Juvaid hasan shimul'),
                accountEmail: Text('shimuljhs869@gmail.com'),
                currentAccountPicture: Image.network("https://avatars.githubusercontent.com/u/119728892?s=400&u=5f5b72bc2650ebaafe7987705a1c81dbb1609d49&v=4"),

              ),
            ),

            ListTile(leading: Icon(Icons.home,color: Colors.lime,),title: Text("home",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),onTap: () {
              Navigator.pop(context);
            },),
            ListTile(leading: Icon(Icons.contact_page,color: Colors.amber,),title: Text("contact",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),),
            ListTile(leading: Icon(Icons.mark_unread_chat_alt,color: Colors.blueGrey,),title: Text("blog",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),),
            ListTile(leading: Icon(Icons.code,color: Colors.green,),title: Text("our courcec",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),),
            ListTile(leading: Icon(Icons.help,color: Colors.orange,),title: Text("help",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),),
          ],
        ),
      ),
      body: Center(
        child: Text('drawer',style: TextStyle(fontSize: 40),),
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
