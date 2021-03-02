import 'dart:io';

import 'package:flutter/material.dart';

class ImageWithFrame extends StatelessWidget {
  final double imageWidth;
  final double imageHeight;
  final double height;
  final Color frameColor;
  final double frameWidth;
  final double frameHeight;
  final double borderRadius;
  final File imageFile;

  const ImageWithFrame({
    this.height,
    this.imageWidth,
    this.imageHeight,
    this.frameColor,
    this.frameWidth,
    this.frameHeight,
    this.borderRadius,
    this.imageFile,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image(
            width: imageWidth,
            height: height,
            fit: BoxFit.cover,
            image: Image.file(imageFile).image,
          ),
        ),
        ImageFrame(
          frameColor: frameColor,
          frameWidth: frameWidth,
          frameHeight: frameHeight,
          borderRadius: borderRadius,
        ),
      ],
    );
  }
}

class ImageFrame extends StatelessWidget {
  final Color frameColor;
  final double frameWidth;
  final double frameHeight;
  final double borderRadius;

  const ImageFrame({
    this.frameColor,
    this.frameWidth,
    this.frameHeight,
    this.borderRadius,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: frameWidth,
      height: frameHeight,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: frameColor,
          width: frameWidth,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    );
  }
}
