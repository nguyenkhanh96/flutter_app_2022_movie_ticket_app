import 'package:flutter/material.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/config/app_color.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/constants/asset_path.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height / 3.5,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(AssetPath.teaserRalph)),
              gradient: LinearGradient(colors: [
                GradientPalette.black1,
                GradientPalette.black2,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            GradientPalette.black2,
            GradientPalette.black1,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        )
      ],
    );
  }
}
