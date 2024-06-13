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

  var arrData = ["Alice", "Bob", "Charlie", "David", "Eva", "Frank", "Grace", "Helen", "Ivy", "Jack"];

  var arrData2 = [
  {"name": "Alice", "age": 30, "phone": "555-1234"},
  {"name": "Bob", "age": 25, "phone": "555-5678"},
  {"name": "Charlie", "age": 35, "phone": "555-8765"},
  {"name": "David", "age": 28, "phone": "555-4321"},
  {"name": "Eva", "age": 22, "phone": "555-6789"},
  {"name": "Frank", "age": 40, "phone": "555-9876"},
  {"name": "Grace", "age": 33, "phone": "555-5432"},
  {"name": "Helen", "age": 27, "phone": "555-6543"},
  {"name": "Ivy", "age": 29, "phone": "555-7654"},
  {"name": "Jack", "age": 31, "phone": "555-8765"},
  {"name": "Karen", "age": 34, "phone": "555-2386"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Mapping ListView'),
      ),
      body: ListView(
        children: arrData2.map((value) {
          return ListTile(
            leading: Icon(Icons.account_box),
            title: Text(value['name'].toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            subtitle: Text(value['phone'].toString(), style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
            trailing: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.lightBlueAccent.shade100,
                child: Text(value['age'].toString()))
          );
        }).toList(),
      )
    );
  }
}
