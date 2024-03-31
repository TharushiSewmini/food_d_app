import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final Function()? onClick;
  const MyButton({super.key, required this.buttonText, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: Center(
            child: Text(
          buttonText,
          style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.bold ,
              fontSize: 16),
        )),
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.tertiary,
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
