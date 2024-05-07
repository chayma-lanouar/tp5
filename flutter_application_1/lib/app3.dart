import 'package:flutter/material.dart';

//import 'login.dart';

void main() {
  runApp(MaClasse3());
}

class MaClasse3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '3emes Application Flutter',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('img.jpg', fit: BoxFit.fill),
          Text('Hello World'),
        ])),
      ),
    );
  }
}
