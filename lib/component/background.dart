import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final ImageProvider backgroundImage;
  final bool isDarken;
  const Background({
    Key? key,
    required this.backgroundImage,
    required this.isDarken,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: backgroundImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        isDarken
            ? Positioned.fill(
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    color: const Color(0xFF000000),
                  ),
                ),
              )
            : Container()
      ],
    );
  }
}
