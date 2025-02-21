import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> capitals = [
    'Islamabad',
    'New Dehli',
    'Khatmandu',
    'Dhaka',
    'New York',
    'Lisbon',
    'Tokyo',
    'Stockholm'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissible Package'),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
          itemCount: capitals.length,
          itemBuilder: (context, index) {
            return Dismissible(
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar(CustomSnackBar("Removed"));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(CustomSnackBar("Added"));
                  }
                },
                key: Key(capitals[index]),
                background: Container(color:Colors.red),
                secondaryBackground: Container(color:Colors.green),
                child: Card(
                  child: ListTile(
                    title: Text(capitals[index]),
                  ),
                ));
          }),
    );
  }

  

}

SnackBar CustomSnackBar(String msg){
  return SnackBar(
      action: SnackBarAction(label: "Undo", onPressed: (){},textColor: Colors.blue,),
      content: Text(msg),
      backgroundColor: Colors.grey[600],
      behavior: SnackBarBehavior.floating,
      duration:const Duration(milliseconds: 1500),
      );
}
