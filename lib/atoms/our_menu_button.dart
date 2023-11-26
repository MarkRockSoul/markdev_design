import 'package:flutter/material.dart';

class OurMenuButton extends StatelessWidget {
  const OurMenuButton(
      {super.key,
      required this.label,
      required this.iconData,
      required this.color,
      this.backgroundColor,
      required this.splashColor,
      required this.nextPage});
  final String label;
  final IconData iconData;
  final Color color;
  final Color? backgroundColor;
  final Color splashColor;
  final Function() nextPage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      child: Card(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        margin: const EdgeInsets.all(8),
        child: ListTile(
          splashColor: splashColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
          onTap: nextPage,
          title: Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  color: color,
                  size: 42,
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    //fontFamily: 'League',
                    fontSize: 12,
                    color: color,
                    //color: Color(0xFFFC8E28)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
