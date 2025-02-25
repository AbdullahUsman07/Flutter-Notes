
import 'package:flutter/material.dart';

class TabrBarWidget extends StatelessWidget {
  const TabrBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
     child: Scaffold(
      appBar: AppBar(  
        title:const Text('Chat App'),
        backgroundColor: Colors.blue,
        bottom: const TabBar(
        //  indicatorColor: Colors.black,
        //  indicatorWeight:5,
          tabs: [
        Tab(icon: Icon(Icons.chat),text: 'CHATS'),
        Tab(icon:Icon(Icons.update), text: 'UPDATES'),
        Tab(icon: Icon(Icons.call),text:'CALLS'),
        Tab(icon: Icon(Icons.group), text: 'GROUPS'),
      ],),
      ),
      body: const TabBarView(children: [
         Center(child:Text('Chats')),
        Center(child: Text('Updates'),),
        Center(child: Text('Updates'),),
        Center(child: Text('Updates'),),
      ]),
     ));
  }
}
