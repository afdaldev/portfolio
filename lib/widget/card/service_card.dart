import 'package:flutter/material.dart';
import 'package:portfolio/core/core.exports.dart';
import 'package:portfolio/models/models.exports.dart';

class ServiceCard extends StatelessWidget {
  final MyService service;

  const ServiceCard({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<MyColorScheme>()!;

    return Container(
      width: 389.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: const Color(0xFFE0E0E0),
          width: 1.0,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 34.0,
        vertical: 56.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            service.icon,
            size: 56.0,
            color: colorScheme.primaryColor,
          ),
          const SizedBox(height: 26.0),
          Text(
            service.title,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
              color: colorScheme.textColor,
            ),
          ),
          const SizedBox(height: 13.0),
          Text(
            service.description,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: colorScheme.descriptionTextColor,
            ),
          ),
          const SizedBox(height: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: service.serviceChild
                .map(
                  (e) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        e.icon,
                        size: 12.0,
                        color: colorScheme.primaryColor,
                      ),
                      const SizedBox(width: 13.0),
                      Text(
                        e.title,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                          color: colorScheme.textColor,
                        ),
                      )
                    ],
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
