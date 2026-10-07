import 'package:flutter/material.dart';

void main() {
  // runApp(const MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //   home: Scaffold(
  //     body: Center(
  //       child: Text('KING INDO')
  //       ),
  //       backgroundColor: Color.fromRGBO(255, 0, 149, 0.325))),
  //       );
 runApp(const MyClass());
  
}
class MyClass extends StatelessWidget {
  // Custom constructor
  const MyClass({super.key});

  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: Center(
        
        child: Text('KING INDO')
        ),

        backgroundColor: Color.fromRGBO(255, 0, 149, 0.325)
        )
        );
  }
}
class MyWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class BasicTextWidget extends StatelessWidget {
  const BasicTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello World',
    );
  }
}