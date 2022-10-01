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
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Builder"),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, int index) {
            return ListTile(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.phone),
              title: Text("Person ${index + 1}"),
            );
          },
        ),
      ),
    );
  }
}
