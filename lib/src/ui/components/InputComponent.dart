import 'package:flutter/material.dart';

class InputComponent extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final Function onChanged;
  final bool isPassword;

  InputComponent({this.labelText, this.hintText, this.icon, this.controller, this.onChanged, this.isPassword = false});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: (value) {
          this.onChanged(value);
        },
        obscureText: this.isPassword,
        controller: this.controller,
        decoration: InputDecoration(
            labelText: this.labelText,
            hintText: this.hintText,
            suffixIcon: Icon(this.icon),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)))),
      ),
    );
  }
}

