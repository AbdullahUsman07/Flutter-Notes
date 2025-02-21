import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
    runApp(MyApp());
}

class MyApp extends StatelessWidget{

    @override
    Widget build(BuildContext context){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home:Scaffold(
            body:Center(
              child:ElevatedButton(onPressed: UrlLaunch, child: Text('Click Me')),
            )
          )
        );
    }
}

void UrlLaunch()async{
  const _url='https://flutter.dev';
  final Uri uri=Uri.parse(_url);

  if(await canLaunchUrl(uri)){
    await launchUrl(uri);
  }
  else{
    throw 'Could not launch URL ${_url}';
  }
}