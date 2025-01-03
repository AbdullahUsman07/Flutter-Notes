import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  MyApp({super.key});

  @override  
  _MyAppState createState()=> _MyAppState();

}

class _MyAppState extends State<MyApp>{
  TextEditingController _controller=TextEditingController();
  String _storedValue='';

  @override   
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar( 
          title: const Text('Local Storage'),
          centerTitle: true,
        ),
        body:Padding(padding: const EdgeInsets.all(20.0),
        child:Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(label:Text('Enter Data')),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _loadData, child:const Text('Load Data',style:TextStyle(fontWeight: FontWeight.bold))),
            const SizedBox(height:10),
            ElevatedButton(onPressed: _saveData, child: const Text('Save Data',style:TextStyle(fontWeight: FontWeight.bold))),
            Text('Stored Data: $_storedValue'),
          ],
        ))
      )
    );
  }

void _loadData()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _storedValue = prefs.getString('myKey') ?? 'No Data Stored Yet';
    });
}



void _saveData()async{
  SharedPreferences pref=await SharedPreferences.getInstance();
  await pref.setString('myKey', _controller.text);
}
}

