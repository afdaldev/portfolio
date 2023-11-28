class MyTestimonial {
  final String image;
  final String name;
  final List<Tags> tags;
  final String comment;

  MyTestimonial({
    required this.image,
    required this.name,
    required this.tags,
    required this.comment,
  });

  static List<MyTestimonial> testimonials() =>
      [
        MyTestimonial(
            image: 'assets/images/wira.png',
            name: 'Wira',
            tags: [
              Tags.designer,
              Tags.developer,
            ],
            comment:
            'It is professional, considers everyone\'s time, can think about the whole problem and not only in a small niche, friendly, , and UX,UI.'),
        MyTestimonial(
            image: 'assets/images/wira.png',
            name: 'Afdal',
            tags: [
              Tags.designer,
              Tags.developer,
            ],
            comment:
            'It is professional, considers everyone\'s time, can think about the whole problem and not only in a small niche, friendly, , and UX,UI.')
      ];
}

enum Tags {
  designer('Designer'),
  developer('Developer');

  final String value;

  const Tags(this.value);
}
