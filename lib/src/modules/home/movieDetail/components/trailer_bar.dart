import 'package:flutter/material.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/config/app_color.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/constants/asset_path.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/model/movie.dart';

class TrailerBar extends StatelessWidget {
  const TrailerBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: movies[0]
            .trailers
            .map((e) => Builder(builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Stack(
                      children: [
                        Container(
                          height: 160,
                          width: 260,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(e),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 160,
                          width: 260,
                          decoration:
                              const BoxDecoration(color: Colors.black12),
                        ),
                        GestureDetector(
                          onTap: () {
                            //Play something
                          },
                          child: SizedBox(
                            height: 160,
                            width: 260,
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 56),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: DarkTheme.blueMain),
                              child: const ImageIcon(
                                AssetImage(AssetPath.iconPlay),
                                color: DarkTheme.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }))
            .toList(),
      ),
    );
  }
}
