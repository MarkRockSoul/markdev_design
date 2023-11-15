import 'package:flutter/material.dart';

class OurDropdownField<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>>? items;
  final T? value;
  final Function(T?)? onChanged;
  final String? labelText;
  final Icon? prefixIcon;

  const OurDropdownField({
    Key? key,
    required this.items,
    this.value,
    this.onChanged,
    this.labelText,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      items: items,
      value: value,
      isExpanded: true,
      selectedItemBuilder: (BuildContext context) {
        Iterable<String>? itemsText = items?.map<String>((item) {
          return item.value.toString();
        });

        return itemsText != null
            ? itemsText.map<Widget>((item) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    item,
                  ),
                );
              }).toList()
            : [];
      },
      onChanged: onChanged,
      borderRadius: BorderRadius.circular(18),
      style: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
