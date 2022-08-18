import 'package:flutter/material.dart';


class TypeWidget extends StatelessWidget {

  String type;
  TypeWidget(this.type, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.7),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Text(
          type,
          style:const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 10
          ),
        ),
      ),
    );
  }
}