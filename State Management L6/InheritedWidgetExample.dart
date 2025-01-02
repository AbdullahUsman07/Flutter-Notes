import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class CounterInheritedWidget extends InheritedWidget {
  final int counter;
  final Function() increment;

  CounterInheritedWidget(
      {required this.counter, required this.increment, required Widget child})
      : super(child: child);

  static CounterInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterInheritedWidget>();
  }

  @override
  bool updateShouldNotify(CounterInheritedWidget old) {
    return old.counter != counter;
  }
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterInheritedWidget(
      counter: _count,
      increment: _incrementCount,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Inherited Wigdet Example',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(child: CounterDisplay()),
              const SizedBox(
                height: 20,
              ),
              Center(child: ButtonDisplay()),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterDisplay extends StatelessWidget {
  const CounterDisplay();

  @override
  Widget build(BuildContext context) {
    final counter = CounterInheritedWidget.of(context)?.counter ?? 0;

    return Text('Counter: $counter',
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold));
  }
}

class ButtonDisplay extends StatelessWidget {
  const ButtonDisplay();

  @override
  Widget build(BuildContext context) {
    final increment = CounterInheritedWidget.of(context)?.increment;
    return ElevatedButton(
      onPressed: increment,
      child: const Text("Increment"),
    );
  }
}
