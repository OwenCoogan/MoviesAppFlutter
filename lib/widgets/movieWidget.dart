
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
              child: Icon(Icons.edit),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(movie.name),
            subtitle: Text(movie.premiered),
            leading: Image.network(movie.image),
          );
        },
      ),
    );
  }

}