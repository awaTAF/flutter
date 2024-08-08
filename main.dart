import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        title: const Text(
          "awatef odeh alanazi",
          style: TextStyle(fontSize: 50, color: Color.fromARGB(115, 0, 0, 0)),
        ),
        backgroundColor: const Color.fromARGB(202, 121, 31, 194),
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Color.fromARGB(158, 41, 5, 43),
          size: 30,
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black12,
            size: 35,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(
            Icons.message,
            color: Colors.black12,
            size: 35,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: const Text('Increment Counter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
