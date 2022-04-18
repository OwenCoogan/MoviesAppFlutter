import 'package:flutter/material.dart';

class MovieScren extends StatelessWidget {
  const MovieScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile/update');
            }
          ),
        ],
      ),
    );
  }
}
