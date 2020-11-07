import 'package:flutter/material.dart';

Widget separatedTitleMenu(String title, VoidCallback onPressed) {
  return ListTile(
    title: Text(title,
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0)),
    trailing: IconButton(
      icon: Icon(Icons.keyboard_arrow_right),
      onPressed: onPressed,
    ),
    
  );
}
