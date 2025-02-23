import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


// This is simple code that helps to show how shared_preferences can be used 

class SharedPrefs extends StatefulWidget {
  const SharedPrefs({super.key});

  @override
  State<SharedPrefs> createState() => _SharedPrefsState();
}

class _SharedPrefsState extends State<SharedPrefs> {

  TextEditingController _controller = TextEditingController();

  var _savedvalue = "Nothing Saved";

  @override
  void initState() {
    
    super.initState();
    setpref();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(  
        title:const Text("Shared Preferences"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Name'),
              ),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(child:const Text('Save'),
            onPressed: ()async{
              var prefs = await SharedPreferences.getInstance();
        
              prefs.setString("name", _controller.text.toString());

              _controller.clear();
            },),
            const SizedBox(height:10),
            Text(_savedvalue),
          ],),
      ),
    );
  }
  
  void setpref() async{
    var pref = await SharedPreferences.getInstance();
    var value = pref.getString("name") ?? "Nothing Saved";

    setState(() {
      _savedvalue =value;
    });
  }
}