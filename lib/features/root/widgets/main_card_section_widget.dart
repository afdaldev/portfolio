import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/core/core.exports.dart';

class MainCardSectionWidget extends StatelessWidget {
  const MainCardSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<MyColorScheme>()!;

    return ClipRRect(
      borderRadius: BorderRadius.circular(56.0),
      child: Container(
        height: 1046.0,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFFFFFAFA),
        child: Stack(
          children: [
            Positioned(
              top: -344,
              left: -344,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 50.0,
                  sigmaY: 50.0,
                ),
                child: const _ColorContainer(),
              ),
            ),
            Positioned(
              bottom: -459,
              left: -459,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 50.0,
                  sigmaY: 50.0,
                ),
                child: _ColorContainer(
                  color: const Color(0xFFE4ECFF).withOpacity(0.5),
                ),
              ),
            ),
            Positioned(
              bottom: -459,
              right: -943,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 50.0,
                  sigmaY: 50.0,
                ),
                child: _ColorContainer(
                  size: 1114.0,
                  color: const Color(0xFFFFE3E3).withOpacity(0.5),
                ),
              ),
            ),
            Positioned(
              bottom: 38.0,
              right: 380.0,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 50.0,
                  sigmaY: 50.0,
                ),
                child: _ColorContainer(
                  size: 426.0,
                  color: const Color(0xFFA7B0FF).withOpacity(0.5),
                ),
              ),
            ),
            Positioned(
              top: 128.0,
              bottom: 128.0,
              right: 128.0,
              left: 1050.0,
              child: Image.asset(
                'assets/images/wira.png',
              ),
            ),
            Positioned(
              top: 302.0,
              left: 128.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, I\'m Wira Satya!',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 100.0,
                      color: colorScheme.textColor,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'a',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 100.0,
                          color: colorScheme.textColor,
                        ),
                      ),
                      Text(
                        ' UI/UX designer',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 100.0,
                          color: colorScheme.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32.0),
                  Row(
                    children: [
                      Text(
                        'with',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: colorScheme.textColor,
                        ),
                      ),
                      Chip(
                        backgroundColor: colorScheme.reverseScaffoldBackground,
                        label: Text(
                          '3 😎',
                          style: TextStyle(
                            color: colorScheme.reverseTextColor,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Text(
                        ' with years experience working at ',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: colorScheme.textColor,
                        ),
                      ),
                      Text(
                        'HELPer',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: colorScheme.textColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ColorContainer extends StatelessWidget {
  final Color? color;
  final double? size;

  const _ColorContainer({
    this.color,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 688.0,
      width: size ?? 688.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          688.0 / 2,
        ),
        color: color ?? const Color(0xFFDEFF99).withOpacity(0.5),
      ),
    );
  }
}
