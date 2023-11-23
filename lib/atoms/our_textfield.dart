import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Importa esta línea para la validación de entrada.

class OurTextField extends StatelessWidget {
  final bool? enabled;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardType;
  final String? labelText;
  final String? hintText;
  final String? prefixText;
  final Icon? prefixIcon;
  final Function(String?)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final Color? colorFill; // Nuevo parámetro.

  const OurTextField(
      {Key? key,
      this.enabled,
      this.textEditingController,
      this.keyboardType,
      this.labelText,
      this.hintText,
      this.prefixText,
      this.prefixIcon,
      this.onChanged,
      this.inputFormatters, // Agrega el nuevo parámetro al constructor.
      this.maxLines,
      this.minLines,
      this.maxLength,
      this.colorFill})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enabled,
      controller: textEditingController,
      keyboardType: keyboardType,
      maxLines: maxLines,
      minLines: minLines,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
      decoration: InputDecoration(
          prefixStyle: const TextStyle(color: Colors.black54),
          prefixText: prefixText,
          labelText: labelText,
          hintText: hintText,
          prefixIcon: prefixIcon,
          fillColor: colorFill),
      onChanged: onChanged,
    );
  }
}
