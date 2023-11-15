import 'package:flutter/material.dart';

class OurDialogButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color colorText;
  final Color colorTextDisabled;
  final void Function()? onPressed;
  // final IconData icon;

  const OurDialogButton(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.color,
      required this.colorText,
      required this.colorTextDisabled
      //required this.icon
      });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 6,
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: onPressed,
        child: SizedBox(
          height: 40,
          // width: double.maxFinite,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /*  Icon(
                  icon,
                  color: onPressed != null ? colortext : TEXT_DISABLED,
                ),
                SizedBox(
                  width: 12,
                ),*/
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: onPressed != null
                            ? colorText
                            : colorTextDisabled), //fontsize 18
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
