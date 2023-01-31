import 'package:flutter/material.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/components/header.dart';
import 'package:flutter_app_2022_movie_ticket_app/src/modules/home/components/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            HomeHeader(size: size),
            //search bar
            SearchBar(size: size)
            //category bar
          ],
        ),
      ),
    );
  }
}
