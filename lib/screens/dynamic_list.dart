import 'package:flutter/material.dart';

class DynamicListPage extends StatefulWidget {
  DynamicListPage({Key key}) : super(key: key);

  @override
  _DynamicListPageState createState() => _DynamicListPageState();
}

class _DynamicListPageState extends State<DynamicListPage> {

  final items = List<String>.generate(100, (index) => "items $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dynamic List Page"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {},
            )
          ],
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${items[index]}"),
              onTap: () {},
            );
          } 
        )
    );
  }
}
