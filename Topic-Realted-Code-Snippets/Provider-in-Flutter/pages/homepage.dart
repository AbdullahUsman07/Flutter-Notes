

import 'package:flutter/material.dart';
import 'package:practice/provider/userprovider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.green,
      ),
      body:Center(
        child: Text(context.watch<UserProvider>().username),
      ),
    );
  }
}