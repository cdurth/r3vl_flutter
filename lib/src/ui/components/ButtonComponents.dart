import 'package:flutter/material.dart';

class FullWidthButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final TextStyle style;
  final Color buttonColor;

  static const  TextStyle defaultStyle = TextStyle(
    fontSize: 22.0,
  );

  FullWidthButton({this.text, this.onPressed, this.style = defaultStyle, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: RaisedButton(
        color: this.buttonColor,
        onPressed:this.onPressed,
        child: Text(
          this.text,
          style:this.style
        ),
    ),
    );
  }
}