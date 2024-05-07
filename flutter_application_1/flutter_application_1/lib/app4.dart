import 'package:flutter/material.dart';

//import 'login.dart';

void main() {
  runApp(MaClasse4());
}

class MaClasse4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              '4eme Application Flutter',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
          ),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                Container(
                  child: Image.asset('img.jpg', fit: BoxFit.fill),
                  width: 350,
                ),
                Text('Hello World'),
              ]))),
    );
  }
}
