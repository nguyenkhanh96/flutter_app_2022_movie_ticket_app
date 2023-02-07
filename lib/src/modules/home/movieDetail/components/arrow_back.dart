import 'package:flutter/material.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/config/app_color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: IconButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          icon: const FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: DarkTheme.white,
          )),
    );
  }
}
