import 'package:flutter/material.dart';

class MyService {
  final IconData icon;
  final String title;
  final String description;
  final List<MyServiceChild> serviceChild;

  MyService({
    required this.icon,
    required this.title,
    required this.description,
    required this.serviceChild,
  });

  static List<MyService> services() => [
        MyService(
          icon: Icons.design_services_rounded,
          title: 'UI/UX Design',
          description:
              'It is a long established fact that reader will be distracted.',
          serviceChild: [
            MyServiceChild(
              title: 'Web and Mobile App Design',
            ),
            MyServiceChild(
              title: 'Micro Interaction',
            ),
          ],
        ),
        MyService(
          icon: Icons.wordpress_rounded,
          title: 'Wordpres Design',
          description:
              'It is a long established fact that reader will be distracted.',
          serviceChild: [
            MyServiceChild(
              title: 'Web and Mobile App Design',
            ),
            MyServiceChild(
              title: 'Custom CSS & Design',
            ),
          ],
        ),
        MyService(
          icon: Icons.post_add_rounded,
          title: 'Social Media Post',
          description:
              'It is a long established fact that reader will be distracted.',
          serviceChild: [
            MyServiceChild(
              title: 'Template Social Media Post',
            ),
            MyServiceChild(
              title: 'Management Social Media',
            ),
          ],
        ),
        MyService(
          icon: Icons.post_add_rounded,
          title: 'Video Editing',
          description:
              'It is a long established fact that reader will be distracted.',
          serviceChild: [
            MyServiceChild(
              title: 'Editing Video',
            ),
            MyServiceChild(
              title: 'Shot Video',
            ),
          ],
        ),
      ];
}

class MyServiceChild {
  final IconData icon;
  final String title;

  MyServiceChild({
    this.icon = Icons.circle_rounded,
    required this.title,
  });
}
