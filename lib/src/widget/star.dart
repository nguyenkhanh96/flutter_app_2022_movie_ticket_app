import 'package:flutter/material.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/config/app_color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StartComponent extends StatelessWidget {
  const StartComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 4),
      child: FaIcon(
        FontAwesomeIcons.solidStar,
        color: DarkTheme.yellow,
        size: 10,
      ),
    );
  }
}
