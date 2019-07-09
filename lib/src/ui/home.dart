import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title;

  Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(children: <Widget>[
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'movies');
            },
            child: const Text('Movies', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'joinParty');
            },
            child: const Text('Join Party', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'createParty');
            },
            child: const Text('Create Party', style: TextStyle(fontSize: 20)),
          ),
        ]),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
