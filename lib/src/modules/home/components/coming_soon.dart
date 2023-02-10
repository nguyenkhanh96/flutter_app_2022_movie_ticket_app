import 'package:flutter/material.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/model/movie.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/movieDetail/movie_detail_page.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/selectCinema/select_cinema_page.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: movies
            .map((e) => Builder(builder: (context) {
                  return Expanded(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SelectCinemaPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      child: Image.asset(e.posterImg),
                    ),
                  ));
                }))
            .toList(),
      ),
    );
  }
}
