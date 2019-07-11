import 'package:flutter/material.dart';
import 'package:my_movies/src/ui/components/myDrawer.dart';

import 'components/InputComponent.dart';
import 'components/ButtonComponents.dart';

class JoinParty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Join Party'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InputComponent(
                    labelText: "Party Code",
                    hintText: "Enter a party code!",
                    icon: Icons.audiotrack),
                FullWidthButton(text: 'Join Party', onPressed: (){}, buttonColor: Colors.red, )
              ])),
      drawer: MyDrawer(),
    );
  }
}