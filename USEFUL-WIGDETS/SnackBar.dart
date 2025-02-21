

import 'package:flutter/material.dart';


// SnackBar is a small message that pops up at the bottom of the screen 
// to show quick feedback to the user.

class SnackBarWidget extends StatefulWidget {
  const SnackBarWidget({super.key});

  @override
  State<SnackBarWidget> createState() => _SnackBarWidgetState();
}

class _SnackBarWidgetState extends State<SnackBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title: const Text('SnackBar'),
        backgroundColor: Colors.red,
      ),
      body:Center(
        child: ElevatedButton(
          onPressed: (){
            final snackbar = SnackBar(
              duration: const Duration(milliseconds: 3000),
              behavior: SnackBarBehavior.floating,
              action: SnackBarAction(label: 'Undo', onPressed: (){}, textColor: Colors.blue,),
              backgroundColor: Colors.grey[700],
              content: const Text('you click wrong button',style:TextStyle(color:Colors.white)),);
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
         child: const Text('Click Me'),),
      )
    );
  }
}