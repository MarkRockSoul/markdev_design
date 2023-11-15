import 'package:flutter/material.dart';

class OurImage extends StatelessWidget {
  final String? assetRoute;
  final double? widthImage;
  final double? heightImage;
  const OurImage(
      {super.key, this.assetRoute, this.heightImage, this.widthImage});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetRoute!,
      width: widthImage,
      height: heightImage,
    );
  }
}

class OurImageBackground extends StatelessWidget {
  final String? assetRoute;
  final Color? color;
  const OurImageBackground({super.key, this.assetRoute, this.color});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetRoute!,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      colorBlendMode: BlendMode.screen,
      color: color,
      fit: BoxFit.cover,
    );
  }
}
