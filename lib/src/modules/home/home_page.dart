import 'package:flutter/material.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/config/app_color.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/components/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(size: size),
            //search bar
          ],
        ),
      ),
    );
  }
}
