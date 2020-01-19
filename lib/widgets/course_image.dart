import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const String heading = "Courses";
const String subHeading =
    "Participate for the full week as an intensive or advanced performer";

class CourseImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 700),
      child: Column(
        children: <Widget>[
          Text(heading.toUpperCase(), style: Theme.of(context).textTheme.title),
          Text(subHeading.toUpperCase()),
          Wrap(
            children: [
              MouseRegion(
                child: CircularProfileAvatar(
                  '',
                  child: Transform.scale(
                      scale: 2.0, child: Image.asset('assets/flute-blue.jpg')),
                  backgroundColor: Colors.transparent,
                  radius: 100.0,
                  borderWidth: 10.0,
                  borderColor: Colors.grey[300],
                ),
              ),
              CircularProfileAvatar(
                '',
                child: Image.asset('assets/flute-green.jpg'),
                backgroundColor: Colors.transparent,
                radius: 100.0,
              ),
              CircularProfileAvatar(
                '',
                child: Transform.rotate(
                    angle: 0.35, child: Image.asset('assets/flute-red.jpg')),
                backgroundColor: Colors.transparent,
                radius: 100.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
