import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';




void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override  
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(  
          title:const Text('Simple API call',style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body:ApiCallScreen(),
      )
    );
  }
}

class ApiCallScreen extends StatefulWidget{
  ApiCallScreen({super.key});

   @override
  _ApiCallScreenState createState()=> _ApiCallScreenState();

}

class _ApiCallScreenState extends State<ApiCallScreen>{

  String _responseMsg='';
  bool _isLoading=false;

  Future<void> fetchData() async{
    setState(() {
      _responseMsg='';
      _isLoading=true;
    });

    try{
      final response= await http.get(Uri.parse('https://api.example.com/data'))
      .timeout(Duration(seconds: 5));

      if(response.statusCode==200){
        setState(() {
          _responseMsg='Data Fecthed Successfully :${response.body}';
        });
      }
      else{
        setState(() {
          _responseMsg='Error ${response.body}';
        });
      }
    }catch(e){
      setState(() {
        _responseMsg='An Error Occured ${e}';
      });
    }finally{
      setState(() {
        _isLoading=false;
      });
    }
  }

  @override   
  Widget build(BuildContext context){
    return Center(
      child:Column(  
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(_isLoading)
            CircularProgressIndicator()
          else
            Text(_responseMsg,style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            const SizedBox(height:20),
            ElevatedButton(onPressed:fetchData, child: const Text('Call Api',style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
        ],
      )
    );
  }
}




