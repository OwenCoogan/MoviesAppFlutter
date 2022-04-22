
import 'package:flutter/foundation.dart';

class Movie {
  final name;
  final premiered;
  final image;
  final id;
  final language;
  final summary;

  Movie({this.name, this.premiered,this.image,this.id, this.language,this.summary});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      name: json['name'],
      premiered: json['premiered'],
      image: json['image']['medium'],
      id: json['id'],
      language: json['language'],
      summary: json['summary'],
    );
  }

}
