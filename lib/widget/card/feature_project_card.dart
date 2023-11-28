import 'package:flutter/material.dart';

class FeaturedProjectCard extends StatelessWidget {
  final Color backgroundColor;
  final Color? decorationColor;
  final Widget? descriptionWidget;
  final Widget? imageWidget;

  const FeaturedProjectCard({
    super.key,
    required this.backgroundColor,
    this.decorationColor,
    this.descriptionWidget,
    this.imageWidget,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        height: 558.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: backgroundColor,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              right: -558/1.7,
              child: Container(
                height: 558.0,
                width: 558.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(558.0 / 3),
                  color: decorationColor,
                ),
              ),
            ),
            descriptionWidget ?? const SizedBox.shrink(),
            imageWidget ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
