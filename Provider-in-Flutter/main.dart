import 'package:flutter/material.dart';
import 'package:practice/pages/counter.dart';
import 'package:practice/pages/homepage.dart';
import 'package:practice/pages/setting.dart';
import 'package:practice/provider/counterprovider.dart';
import 'package:practice/provider/userprovider.dart';
import 'package:provider/provider.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> UserProvider()),
        ChangeNotifierProvider(create: (context)=>CounterProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Skeleton(),
      ),
    );
  }
}


class Skeleton extends StatefulWidget {
  const Skeleton({super.key});

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {

  int currentPageIndex=0;

  List<Widget> pages= [HomePage(), SettingPage(),Counter()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon:  Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon:  Icon(Icons.settings), label: 'Settings'),
        NavigationDestination(icon: Icon(Icons.numbers), label: 'Counter')
      ],
      selectedIndex: currentPageIndex,
      onDestinationSelected: (int index){
        setState(() {
          currentPageIndex=index;
        });
      },
      ),
      body: pages[currentPageIndex],
    );
  }
}
