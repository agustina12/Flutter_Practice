import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // debugShowCheckedModeBanner: false,
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      // home: HomePage(),
      // home: HomeworkAppBar(),
      home: WhatsAppBar(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Belajar Flutter"),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.grey,
                ),
                Text("Guest"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 12),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
    );
  }
}

class HomeworkAppBar extends StatelessWidget {
  const HomeworkAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_open),
        title: Text("Homework AppBar"),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                radius: 14,
                // backgroundColor: Colors.black,
                backgroundImage: NetworkImage("https://4.bp.blogspot.com/-Jx21kNqFSTU/UXemtqPhZCI/AAAAAAAAh74/BMGSzpU6F48/s1600/funny-cat-pictures-047-001.jpg"),
              ),
              Text("Profile"), 
            ],
            ), 
          )
        ],
        titleSpacing: 2,
      ),
    );
  }
}

class WhatsAppBar extends StatelessWidget {
  const WhatsAppBar ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 4, 
    child: Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: 
            Row(
              children: [
                Icon(Icons.search_outlined),
                Icon(Icons.more_vert),
              ],
            ),
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorWeight: 3,
          tabs: [
            Tab(icon: Icon(Icons.camera),),
            Tab(text: 'CHAT',),
            Tab(text: 'STATUS',),
            Tab(text: 'CALL',),
          ]),
        backgroundColor: Colors.teal[700],
        elevation: 5,
         //shadow appbar
      ),
      body: TabBarView(
        children: [
          buildPage('Camera'),
          buildPage('Chat'),
          buildPage('Status'),
          buildPage('Panggilan'),
        ]),
      
    )
  );
  Widget buildPage(String text) => Center(
    child: Text(
      text, 
      style: TextStyle(fontSize: 26),
    ),
  );
}