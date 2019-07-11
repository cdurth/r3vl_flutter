import 'package:flutter/material.dart';
import 'myDrawer.dart';

class JoinParty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Join Party'),
        ),
        body: Center(child: Text('Join Party Placeholder')),
        drawer: MyDrawer(),
    );
  }
}