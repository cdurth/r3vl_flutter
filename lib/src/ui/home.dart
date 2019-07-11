import 'package:flutter/material.dart';
import 'myDrawer.dart';

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
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'songSearch');
            },
            child: const Text('Search Song', style: TextStyle(fontSize: 20)),
          ),
        ]),
      ),
      drawer: MyDrawer()
    );
  }
}
