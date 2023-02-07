import 'package:flutter/material.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/config/app_color.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/config/text_style.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/constants/asset_path.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/movieDetail/components/arrow_back.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/movieDetail/components/background_widget.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/widget/star.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            BackgroundWidget(size: size),
            Container(
              height: size.height / 3.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                GradientPalette.black1,
                GradientPalette.black2,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
            const ArrowBack(),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24, top: size.height / 4.5),
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width / 2.5,
                        child: Image.asset(
                          AssetPath.posterRalph,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 8, bottom: 8),
                            width: size.width,
                            child: const Text(
                              "Ralph Break the Internet",
                              style: TxtStyle.heading3Medium,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 8, bottom: 8),
                            child: Row(
                              children: const [
                                StartComponent(),
                                StartComponent(),
                                StartComponent(),
                                StartComponent(),
                                StartComponent(),
                                Text(
                                  "(5.0)",
                                  style: TxtStyle.heading4,
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
