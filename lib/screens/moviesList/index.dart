import 'package:flutter/material.dart';

class MoviesListScren extends StatelessWidget {
  const MoviesListScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile/update');
            },
          ),
        ],
      ),
    );
  }
}
