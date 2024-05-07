import 'package:flutter/material.dart';

//import 'login.dart';

void main() {
  runApp(MaClasse2());
}

class MaClasse2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              '3eme Application Flutter',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
          ),
          body: Center(
              child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'Hello World',
              style: TextStyle(color: Colors.deepPurpleAccent),
            ),
          )),
        ));
  }
}
