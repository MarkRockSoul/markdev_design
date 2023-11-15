import 'package:flutter/material.dart';

class OurButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color colortext;
  final void Function()? onPressed;

  const OurButton(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.color,
      required this.colortext});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 6,
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        onPressed: onPressed,
        child: SizedBox(
          height: 50,
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: colortext), //fontsize 18
              ),
            ),
          ),
        ));
  }
}
