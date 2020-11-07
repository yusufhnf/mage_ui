import 'package:flutter/material.dart';

Widget accountButton(IconData icon, String title, VoidCallback onPressed) {
  return Container(
    margin: EdgeInsets.only(left: 5.0),
    child: RaisedButton.icon(
      icon: Icon(icon, color: Colors.blue, size: 15.0),
      label: Text(title),
      onPressed: onPressed,
      color: Colors.white,
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    ),
  );
} 
