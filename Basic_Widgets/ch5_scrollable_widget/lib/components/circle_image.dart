import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {

  final double imageRadius;
  final ImageProvider imageProvider;

  const CircleImage({
    Key? key,
    required this.imageProvider,
    this.imageRadius = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      radius: imageRadius,
      child: CircleAvatar(
        radius: imageRadius - 3,
        backgroundImage: imageProvider,
      )
    );
  }
}
