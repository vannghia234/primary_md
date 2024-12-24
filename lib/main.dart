import 'package:flutter/material.dart';
import 'package:sub_project/common/widget/button/button_base.dart';
import 'package:sub_project/core/constant/constant_export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ButtonBase.text(
              backgroundColor: Theme.of(context).colorScheme.primary,
              onPressed: () => print('Button pressed'),
              text: 'Button',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Vui lòng nhập tài khoản',
              style: AppTextStyle.body1(fontSize: 14),
            ),
            Text(
              'Vui lòng nhập tài khoản',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              'TEST DEMO STYLE NÈ U',
              style: AppTextStyle.title1(
                  fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Text(
              'TEST DEMO STYLE',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
