import 'package:flutter/material.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/model/movie.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/movieDetail/components/caster_item.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/movieDetail/movie_detail_page.dart';

class CastBar extends StatelessWidget {
  const CastBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: movies[0]
            .casters
            .map((e) => Builder(builder: (context) {
                  return CasterItem(
                    size: size,
                    cast: e,
                  );
                }))
            .toList(),
      ),
    );
  }
}
