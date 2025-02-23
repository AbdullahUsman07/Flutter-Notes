import 'package:flutter/material.dart';


class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet",style: TextStyle(color:Colors.white)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body:Center(
        child: ElevatedButton(onPressed: (){
          showModalBottomSheet(
            isDismissible: true,
            enableDrag: false,
            isScrollControlled: false,
            elevation: 0,
            backgroundColor: Theme.of(context).primaryColor,
            context: context, builder: (context){
            return const Column(
              mainAxisSize: MainAxisSize.min,
            children: [
              ListTile( 
                title: Text('Orange'),
                subtitle: Text('Abdullah'),
               ),
               ListTile( 
                title: Text('Grapes'),
                subtitle: Text('Ahmed'),
               ),
               ListTile( 
                title: Text('Apple'),
                subtitle: Text('Zainab'),
               ),
               ListTile( 
                title: Text('Dates'),
                subtitle: Text('Usman'),
               ),
            ],
          );
          });
        }, child: const Text('Show Bottom Sheet')),
      )
    );
  }
}