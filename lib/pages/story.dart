import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import './page.dart';

const String markdown = """
# __Who are we__?
The Scottish International Flute Summer School was founded in 1996 by Ruth Morley and Peter Lloyd.  We have grown into a world renowned flute course that offers you the chance to study with some of the world’s leading flute players in an incredibly supportive environment.
***
***
***
# __What do we do?__
We aim to provide you with __inspiration__ and __new ideas__ that you can use to __develop__ your flute playing.  Our __non-competitive__ ethos ensures an environment that will empower and enable risk-taking!
***
As an international school there is the exciting opportunity to expand your horizons by spending time with flute players from all over the world!
***
***
***
# __Is it for me?__
Are you...

- a music student at a conservatoire or university?
- a flute teacher or a young professional player?
- at school and considering study on a performance course?
- an advanced amateur playing for pleasure?  (Minimum recommended standard is grade 5 and above)
- aged 16 or older?

Then the answer is __YES__, one of our course options will be suitable for you and can provide a week of fluting that will inspire.
***
Come for a week and enjoy the results for a lifetime!
***
*The Scottish International Flute Summer School is a not for profit organisation dedicated to providing the highest quality of flute tuition.*

""";

class Story extends Page {
  const Story(String title) : super(title);

  @override
  Widget build(BuildContext context) {
    final style = MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
      h1: TextStyle()
      horizontalRuleDecoration: BoxDecoration(
        border: Border.all(
          color: Colors.transparent,
          width: 1.0,
        ),
      ),
    );

    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 80),
      child: FractionallySizedBox(
        widthFactor: 0.8,
        child: Markdown(
          data: markdown,
          styleSheet: style,
        ),
      ),
    );
  }
}
