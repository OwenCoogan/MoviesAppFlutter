import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models/movie.dart';
import 'widgets/moviesWidget.dart';
import 'widgets/movieWidget.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _App createState() => _App();
}

class _App extends State<App> {
   List<Movie> movies = <Movie>[];
  @override
  void initState() {
    super.initState();
    _populateAllMovies();
  }

  void _populateAllMovies() async {
    var _movies = await _fetchAllMovies();
    setState(() {
      movies = _movies;
    });
  }


  Future<List<Movie>> _fetchAllMovies() async {
      final response = await http
        .get(Uri.parse('https://api.tvmaze.com/shows?page=1'));

      if(response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result;
      return list.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("Failed to load movies!");
    }

  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Movies App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Movies")
        ),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) =>  MoviesWidget(movies: movies),
      }
    );

  }
}