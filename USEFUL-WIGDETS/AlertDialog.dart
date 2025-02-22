

import 'package:flutter/material.dart';

class AlertWidget extends StatefulWidget {
  const AlertWidget({super.key});

  @override
  State<AlertWidget> createState() => _AlertWidgetState();
}

class _AlertWidgetState extends State<AlertWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(  
        child:ElevatedButton(onPressed: (){
          _showMyDialog(context);
        },
         child: const Text("Show DialogBox")
         ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context)async{
  return showDialog(context:context, builder: (BuildContext context){
    return AlertDialog(
      title: const Text("This is Alert Dialog"),
      content: const SingleChildScrollView(
        child: ListBody(
          children: [
             Text("This is a Demo"),
             Text("Flutter is Amazing"),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: const Text("Ok"))
      ],
    );
  });

}