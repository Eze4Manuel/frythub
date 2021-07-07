
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  String message;

  Message({this.message});
  @override
  Widget build(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}
