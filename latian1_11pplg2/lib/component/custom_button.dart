import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String myText;
  final Color myTexcolor;
  final VoidCallback onPressed;
  final Color backgroundColor;

  const CustomButton({super.key, required this.myText,
  required this.myTexcolor,required this.onPressed, this.backgroundColor = Colors.blue,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton( 
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
       child: Text(myText, style: TextStyle(color: myTexcolor),
    ));
  }
}