import 'package:flutter/material.dart';

import './page.dart';
import '../widgets/course_image.dart';
import '../widgets/hero_image.dart';

class Home extends Page {
  const Home(String title) : super(title);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeroImage(),
        CourseImages(),
      ],
    );
  }
}
