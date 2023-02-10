import 'package:flutter/material.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/config/text_style.dart';

class SelectCinemaPage extends StatelessWidget {
  const SelectCinemaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: size.height / 10,
              child: const Center(
                child: Text(
                  "Ralph Breaks the\nInternet",
                  style: TxtStyle.heading1,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
