import 'package:flutter/material.dart';

// GridView basically creates a 2D array of wigdets where crossAxisCount allows 
// you to controll how many wigdets you want in each row

class GridViewExp extends StatelessWidget {
  const GridViewExp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        backgroundColor: Colors.red,
        elevation: 10.0,
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: const[
          Card(
            child: Center(
              child: Text('Ali')),
          ),
          Card(
            child: Center(
              child: Text('Ahmed'),
            ),
          ),
          Card(
            child: Center(
              child: Text('Ahmed'),
            ),
          ),
          Card(
            child: Center(
              child: Text('Ahmed'),
            ),
          ),
          Card(
            child: Center(
              child: Text('Ahmed'),
            ),
          ),
          Card(
            child: Center(
              child: Text('Ahmed'),
            ),
          ),
        ],
      ),
    );
  }
}


// It is efficient for large and dynamic lists
// It loads only those items which are visible

class GridViewBuilder extends StatelessWidget {
  GridViewBuilder({super.key});

  List<String> fruits =['Mango','Orange','Banana','Grapes','Pear','Peach','Guava','Kiwi','Apple'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        backgroundColor: Colors.red,
        elevation: 10.0,
      ),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount:  fruits.length,
       itemBuilder: (context,index){
        return Card(
          child: Center(   
            child: Text(fruits[index]),
          ),
        );
       }),);
  }
}
