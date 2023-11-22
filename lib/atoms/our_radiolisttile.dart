import 'package:flutter/material.dart';

class OurRadioListTile extends StatelessWidget {
  final String title;
  final String value;
  final String groupValue;
  final Function(String?)? onChanged;
  final Color? activeColor; // Nuevo parámetro.

  const OurRadioListTile(
      {Key? key,
      required this.title,
      required this.value,
      required this.groupValue,
      this.onChanged,
      this.activeColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RadioListTile<String>(
      activeColor: activeColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
      contentPadding: const EdgeInsets.all(0),
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}
