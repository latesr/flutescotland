import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import './page.dart';

const String markdown = """
# Who are we?
The Scottish International Flute Summer School was founded in 1996 by Ruth Morley and Peter Lloyd.  We have grown into a world renowned flute course that offers you the chance to study with some of the world’s leading flute players in an incredibly supportive environment.
# What do we do?
We aim to provide you with inspiration and new ideas that you can use to develop your flute playing.  Our non-competitive ethos ensures an environment that will empower and enable risk-taking!

As an international school there is the exciting opportunity to expand your horizons by spending time with flute players from all over the world!
# Is it for me?
Are you...

- a music student at a conservatoire or university?
- a flute teacher or a young professional player?
- at school and considering study on a performance course?
- an advanced amateur playing for pleasure?  (Minimum recommended standard is grade 5 and above)
- aged 16 or older?

""";

class Story extends Page {
  const Story(String title) : super(title);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 80),
      child: FractionallySizedBox(
        widthFactor: 0.8,
        child: Markdown(data: markdown),
      ),
    );
  }
}
