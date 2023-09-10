import 'package:flutter/material.dart';

import '../fundation/color_fundation.dart';
import '../tokens/typography.dart';

class OurText extends StatelessWidget {
  final String? text;
  final Color? colorText;
  final double? fontSize;
  final TextAlign? textAlign;
  const OurText(
      {Key? key,
      required this.text,
      this.colorText,
      this.fontSize,
      this.textAlign})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text!,
        style: TextStyle(color: colorText, fontSize: fontSize),
        textAlign: TextAlign.center,
        maxLines: 4);
  }
}

class H1 extends StatelessWidget {
  final String? text;
  const H1({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OurText(
      text: text,
      colorText: h1Color,
      key: Key('${key}h1'),
    );
  }
}

class H2 extends StatelessWidget {
  final String? text;
  const H2({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OurText(
      text: text,
      colorText: h2Color,
      fontSize: h2Size,
      key: key,
    );
  }
}

class NormalText extends StatelessWidget {
  final String? text;
  const NormalText({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OurText(
      text: text,
      colorText: h3Color,
      key: key,
    );
  }
}
