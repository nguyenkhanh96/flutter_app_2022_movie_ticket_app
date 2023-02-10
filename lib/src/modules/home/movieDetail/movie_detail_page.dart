import 'package:flutter/material.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/config/app_color.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/config/text_style.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/constants/app_constants.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/constants/asset_path.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/model/cast.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/model/movie.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/movieDetail/components/arrow_back.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/movieDetail/components/background_widget.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/movieDetail/components/cast_bar.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/movieDetail/components/trailer_bar.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/widget/star.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

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
              mainAxisAlignment: MainAxisAlignment.end,
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
                              padding:
                                  const EdgeInsets.only(left: 8, bottom: 8),
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
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 8, bottom: 8),
                              width: size.width,
                              child: const Text(
                                "Action & adventure, Comedy",
                                style: TxtStyle.heading4Light,
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 8, bottom: 8),
                              width: size.width,
                              child: const Text(
                                "1h41min",
                                style: TxtStyle.heading4Light,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height - 120,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        alignment: Alignment.center,
                        width: size.width,
                        child: TabBar(
                          tabs: const [
                            Tab(
                              text: "About Movie",
                            ),
                            Tab(
                              text: "Review",
                            ),
                          ],
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelStyle: TxtStyle.heading3,
                          unselectedLabelStyle: TxtStyle.heading3,
                          indicatorColor: DarkTheme.white,
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                buildTitle("Synopsis"),
                                const Padding(
                                  padding: EdgeInsets.only(left: 24),
                                  child: Text(
                                    AppConstant.exampleContent,
                                    style: TxtStyle.heading4Light,
                                  ),
                                ),
                                buildTitle("Cast & Crew"),
                                CastBar(size: size),
                                buildTitle("Trailer and song"),
                                const TrailerBar()
                              ],
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text("Review Page"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding buildTitle(String content) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Text(
        content,
        style: TxtStyle.heading2,
      ),
    );
  }
}
