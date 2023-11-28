import 'package:flutter/material.dart';
import 'package:portfolio/core/core.exports.dart';
import 'package:portfolio/src.exports.dart';

class TestimonialSectionWidget extends StatefulWidget {
  const TestimonialSectionWidget({super.key});

  @override
  State<TestimonialSectionWidget> createState() =>
      _TestimonialSectionWidgetState();
}

class _TestimonialSectionWidgetState extends State<TestimonialSectionWidget> {
  final _controller = PageController();
  int _index = 0;

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
              'Testimonials',
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
          'What client say about Me',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 48.0,
            color: colorScheme.textColor,
          ),
        ),
        const SizedBox(height: 56.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => _controller.previousPage(
                duration: const Duration(
                  seconds: 1,
                ),
                curve: Curves.easeInBack,
              ),
              child: Icon(
                Icons.keyboard_arrow_left_rounded,
                size: 34.0,
                color: colorScheme.primaryColor,
              ),
            ),
            const SizedBox(width: 182.0),
            SizedBox(
              height: 228,
              width: 1000.0,
              child: PageView(
                controller: _controller,
                onPageChanged: (index) => setState(() => _index = index),
                children: MyTestimonial.testimonials()
                    .map((e) => TestimonialWidget(testimonial: e))
                    .toList(),
              ),
            ),
            const SizedBox(width: 182.0),
            InkWell(
              onTap: () => _controller.nextPage(
                duration: const Duration(
                  seconds: 1,
                ),
                curve: Curves.easeIn,
              ),
              child: Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 34.0,
                color: colorScheme.primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TestimonialWidget extends StatelessWidget {
  final MyTestimonial testimonial;

  const TestimonialWidget({
    super.key,
    required this.testimonial,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<MyColorScheme>()!;

    return SizedBox(
      height: 228.0,
      width: 1000.0,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(228 / 2),
            child: Image.asset(
              testimonial.image,
              height: 228.0,
              width: 228.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 140.0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          testimonial.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25.0,
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        Row(
                          children: testimonial.tags
                              .asMap()
                              .map(
                                (index, tag) {
                                  Color? color;

                                  switch (tag) {
                                    case Tags.designer:
                                      color = const Color(0xFFC3EAD7);
                                      break;
                                    case Tags.developer:
                                      color = const Color(0xFFC3E7EA);
                                      break;
                                    default:
                                      color = const Color(0xFFC3EAD7);
                                      break;
                                  }

                                  return MapEntry(
                                    index,
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right:
                                            index != testimonial.tags.length - 1
                                                ? 8.0
                                                : 0,
                                      ),
                                      child: TextCard(
                                        text: tag.value,
                                        color: color,
                                      ),
                                    ),
                                  );
                                },
                              )
                              .values
                              .toList(),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.format_quote_rounded,
                      size: 45.0,
                      color: colorScheme.primaryColor,
                    ),
                  ],
                ),
                const SizedBox(height: 6.0),
                Text(
                  testimonial.comment,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25.0,
                  ),
                  overflow: TextOverflow.visible,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
