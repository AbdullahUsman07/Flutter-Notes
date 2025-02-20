import 'package:flutter/material.dart';
import 'package:practice/provider/counterprovider.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.watch<CounterProvider>().counter.toString()),
            const SizedBox(height: 10,),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterProvider>().increment();
              },
              child: const Icon(Icons.add),
              shape: const CircleBorder(),
              mini: true,
              backgroundColor: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterProvider>().decrement();
              },
              mini: true,
              child: const Icon(Icons.remove),
              shape: const CircleBorder(),
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
