

import 'package:flutter/material.dart';


// ListView is Used to create a simple scrollable List of Widgets
// Mostly Commonly Used Widget for rendering Lists

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        backgroundColor: Colors.red,
        elevation: 10.0,
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.person),  
              title: Text('Abdullah Usman'),
              subtitle: Text('3.6'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person),  
              title: Text('Ahmed Usman'),
              subtitle: Text('2.6'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person),  
              title: Text('John Doe'),
              subtitle: Text('3.2'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person),  
              title: Text('Ali Naqi'),
              subtitle: Text('3.9'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person),  
              title: Text('Zain Muzaffar'),
              subtitle: Text('3.6'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person),  
              title: Text('Ali Tariq'),
              subtitle: Text('3.6'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person),  
              title: Text('Roshan Amir'),
              subtitle: Text('3.4'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person),  
              title: Text('Saqib Bedar'),
              subtitle: Text('2.7'),
            ),
          ),
        ],
      ),
    );
  }
}


// --------------------------------------------------------------------------- //


 // ListView.builder is useful for large lists
 // it uses an item builder function to create list on screem
 // Only Loads items that are visible on the screen

class ListViewBuilder extends StatelessWidget {
   ListViewBuilder({super.key});

  List<String> names =['Abdullah','Roshan','Hamza','Ali','Zain','Adam'];
  List<double> gpa =[3.6,2.4,3.3,4.0,3.1,3.5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        backgroundColor: Colors.red,
        elevation: 10,
      ),
      body:ListView.builder(
        itemCount: names.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              title: Text(names[index]),
              subtitle: Text(gpa[index].toString()),
              leading: const Icon(Icons.person),
            ),
          );
        },
        
      )
      );
  }
}