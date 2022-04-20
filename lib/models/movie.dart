
class Movie {
  final name;
  final premiered;

  Movie({this.name, this.premiered});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      name: json['name'],
      premiered: json['premiered']
    );
  }

}
