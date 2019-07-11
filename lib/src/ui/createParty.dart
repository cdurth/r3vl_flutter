import 'package:flutter/material.dart';
import 'package:my_movies/src/ui/components/myDrawer.dart';

import 'components/InputComponent.dart';
import 'components/ButtonComponents.dart';

class CreateParty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Party'),
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
            InputComponent(
                labelText: "Enter Password",
                hintText: "Enter admin password",
                icon: Icons.lock_outline,
                isPassword: true),
            InputComponent(
                labelText: "Re-Enter Password",
                hintText: "Enter a party code!",
                icon: Icons.lock_outline,
                isPassword: true),
          FullWidthButton(text: 'Create Party', onPressed: (){},)
          ])),
      drawer: MyDrawer(),
    );
  }
}
//
