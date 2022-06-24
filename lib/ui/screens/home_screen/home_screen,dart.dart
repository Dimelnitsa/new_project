import 'package:flutter/material.dart';
import 'package:new_project/ui/screens/home_screen/home_screen_model.dart';
import 'package:new_project/ui/screens/screen2/screen2.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<HomeScreenModel>().counter;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context)=> const Screen2())),
                child: const Text('Screen2'))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<HomeScreenModel>().decrementCounter(),
            tooltip: 'Decrement',
            child: const Icon(Icons.exposure_minus_1),
          ),
          FloatingActionButton(
            onPressed: () => context.read<HomeScreenModel>().incrementCounter(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
