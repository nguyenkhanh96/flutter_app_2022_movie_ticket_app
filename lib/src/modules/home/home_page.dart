import 'package:flutter/material.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/config/text_style.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/components/category_bar.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/components/coming_soon.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/components/header.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/components/promo.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/components/search_bar.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/components/slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header
            HomeHeader(size: size),
            //search bar
            SearchBar(size: size),
            //category bar
            CategoryBar(size: size),
            //title
            buildTitle("Now Playing"),
            //slider
            SliderBar(size: size),
            buildTitle("Coming Soon"),
            const ComingSoon(),
            buildTitle("Promo"),
            Promo(size: size),
            Promo(size: size),
            Promo(size: size),
          ],
        ),
      ),
    );
  }

  Padding buildTitle(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 24,
      ),
      child: Text(
        content,
        style: TxtStyle.heading2,
      ),
    );
  }
}
