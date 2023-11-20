import 'package:flutter/material.dart';

class OurTextButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final Color colorDisabled;
  final void Function()? onPressed;

  const OurTextButton(
      {super.key,
      required this.title,
      required this.icon,
      required this.color,
      required this.colorDisabled,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: onPressed != null ? color : colorDisabled,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: onPressed != null ? color : colorDisabled,
            ),
          )
        ],
      ),
      // color: BLUE_LIGTH,
      //colortext: TEXT,
    );
  }
}
