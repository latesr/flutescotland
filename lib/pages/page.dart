import 'package:flutter/material.dart';

export './home.dart';
export './story.dart';

abstract class Page extends StatelessWidget {
  final String title;
  const Page(this.title);
}
