import 'package:flutter/material.dart';
import 'package:practice/provider/userprovider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  SettingPage({
    super.key,
  });

  final namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Username: ${context.watch<UserProvider>().username}"),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: namecontroller,
            decoration: const InputDecoration(
              hintText: "Enter New User Name",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                context.read<UserProvider>().changeUserName(newName: namecontroller.text);
                namecontroller.clear();
              }, 
            child: const Text("Change")),
          ),
        ],
      )),
    );
  }
}
