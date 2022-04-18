import 'package:flutter/material.dart';
import 'package:m2/screens/movie/index.dart';
import 'package:m2/screens/moviesList/index.dart';
import 'package:m2/screens/home.dart';

void main() {
  runApp(const MyApp());
}

final Map<String, Widget Function(BuildContext)> routes = {
  '/home': (context) => const MyHomePage(title: 'Flutter'),
  '/movie': (context) => const MovieScren(),
  '/movieslist/': (context) => const MoviesListScren(),
  '/other': (context) => Scaffold(
        appBar: AppBar(),
      ),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: '/home',
    );
  }
}
