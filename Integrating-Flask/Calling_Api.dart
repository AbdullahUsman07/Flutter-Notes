

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Using Flask',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var output = 'Initial Result';
  String url = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title: const Text('Ascii Converter'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter any character',
              ),
              onChanged: (value){
                url = 'http://192.x.x.x:5000/api?query=$value';  // enter your ip address (local machine)
              },
            ),
            TextButton(onPressed: (){
              var response = fetchAscii(url);
              var result = jsonDecode(response);
              setState(() {
                output = result['output'];
              });
              
            }, child: const Text('Fetch Ascii value',style: TextStyle(fontSize: 20),)),
            Text(output,style: const TextStyle(color: Colors.pinkAccent, fontSize: 35),),
          ],
        )),
    );
  }
}


fetchAscii(String url) async{
  http.Response reponse = await http.get(Uri.parse(url));
  return reponse.body;
}