import'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {

  String? child;
  Color? color;
  

   CustomContainer({Key? key, this.child, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Text(
        child!,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12
        ),
      ),
    );
  }
}