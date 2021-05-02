import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final double fontSize;
  final VoidCallback onPressed;
  final FontWeight fontWeight;
  final double elevation;
  final TextStyle style;
  final ButtonStyle buttonStyle;
  final double height;
  final double width;
  final EdgeInsetsGeometry margin;

  const RoundedButtonWidget({
    Key key,
    this.buttonText,
    this.buttonColor,
    this.textColor,
    this.fontSize,
    this.onPressed,
    this.fontWeight,
    this.elevation,
    this.style,
    this.height,
    this.width,
    this.margin,
    this.buttonStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: onPressed,
        child: Text(buttonText, style: style),
      ),
    );
  }
}
