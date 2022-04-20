
class Movie {
  final name;
  final premiered;
  final image;

  Movie({this.name, this.premiered,this.image});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      name: json['name'],
      premiered: json['premiered'],
      image: json['image']['medium'],
    );
  }

}
