
class Movie {
  final  title;
  final  year;

  Movie({required this.title,required this.year});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json["Title"],
      year: json["Year"]
    );
  }

}
