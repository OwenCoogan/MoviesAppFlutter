

import 'package:flutter/material.dart';

import '../models/movie.dart';

class IndividualMovieScreen extends StatelessWidget {


  const IndividualMovieScreen({Key? key, required this.movie}) : super(key: key);
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.name),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
               child: Text(movie.premiered),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(movie.image),
            Text(movie.name),
            Text(movie.premiered),
          ],
        ),
      ),
    );
  }

}
