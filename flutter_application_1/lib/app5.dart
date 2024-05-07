import 'package:flutter/material.dart';

//import 'login.dart';

void main() {
  runApp(MaClasse5());
}

class MaClasse5 extends StatelessWidget {
  final List Liste = List.generate(1000, (index) {
    return {
      "id": index,
      "title": "this is the title $index",
      "subtitle": "this is the subtitle $index"
    };
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                '5eme Application Flutter',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.blue,
            ),
            body: ListView.builder(
              itemCount: Liste.length,
              itemBuilder: (context, index) => Card(
                elevation: 6,
                margin: EdgeInsets.all(10),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(Liste[index]["id"].toString()),
                    backgroundColor: Colors.purple,
                  ),
                  title: Text(Liste[index]["title"]),
                  subtitle: Text(Liste[index]["subtitle"]),
                  trailing: Icon(Icons.add_link),
                ),
              ),
            )));
  }
}
