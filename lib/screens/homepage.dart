import 'package:flutter/material.dart';
import 'package:flutter_listview/screens/dynamic_list.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DynamicListPage()));
              },
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text("Map"),
              onTap: () {},
            ),
            ListTile(leading: Icon(Icons.phone), title: Text("phone")),
            ListTile(
              leading: Icon(Icons.photo),
              title: Text("photo"),
              subtitle: Text("This is subtitle"),
              trailing: Icon(Icons.delete, color: Colors.red),
            ),
            Text("This my item text"),
            Icon(Icons.favorite)
          ],
        ));
  }
}
