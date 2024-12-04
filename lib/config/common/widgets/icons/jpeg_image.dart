import 'package:flutter/material.dart';

class JpegImageWidget extends StatelessWidget {
  const JpegImageWidget({
    super.key,
    required this.name,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
  });

  final String name;
  final double? width;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$name.jpeg',
      width: width ?? 24,
      height: height ?? 24,
      fit: fit,
    );
  }
}

DecorationImage? jpegImage({required String name, BoxFit? fit}) => DecorationImage(
      image: AssetImage(
        'assets/images/$name.jpeg',
      ),
      fit: fit,
    );
