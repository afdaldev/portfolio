import 'package:flutter/material.dart';
import 'package:portfolio/core/core.exports.dart';
import 'package:portfolio/src.exports.dart';

class ServicesSectionWidget extends StatelessWidget {
  const ServicesSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<MyColorScheme>()!;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 51.0,
              child: Divider(
                color: colorScheme.textColor,
              ),
            ),
            const SizedBox(width: 12.0),
            Text(
              'Services',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: colorScheme.textColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 32.0),
        Text(
          'What I Do?',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 48.0,
            color: colorScheme.textColor,
          ),
        ),
        const SizedBox(height: 56.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: MyService.services()
                  .asMap()
                  .map(
                    (index, value) => MapEntry(
                      index,
                      Padding(
                        padding: EdgeInsets.only(
                          right: index != MyMenu.menus().length - 1 ? 32.0 : 0,
                        ),
                        child: ServiceCard(
                          service: value,
                        ),
                      ),
                    ),
                  )
                  .values
                  .toList()),
        )
      ],
    );
  }
}
