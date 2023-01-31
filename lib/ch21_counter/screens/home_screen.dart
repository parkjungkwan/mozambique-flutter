import 'package:flutter/material.dart';
import 'package:hello_flutter2/ch21_counter/providers/counter_provider.dart';
import 'package:hello_flutter2/ch21_counter/components/counter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  late CounterProvider _counterProvider;

  @override
  Widget build(BuildContext context) {
    _counterProvider = Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("카운터", style: TextStyle(color: Colors.black, fontSize: 50.0),),
      ),
      body: const CounterScreen(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(onPressed: () => _counterProvider.increase(), icon: Icon(Icons.add, size: 50,)),
          IconButton(onPressed: () => _counterProvider.decrease(), icon: Icon(Icons.remove, size: 50)),
        ],
      ),
    );
  }
}

