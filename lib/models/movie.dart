
class Movie {
  final name;
  final premiered;
  final image;
  final id;

  Movie({this.name, this.premiered,this.image,this.id});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      name: json['name'],
      premiered: json['premiered'],
      image: json['image']['medium'],
      id: json['id'],
    );
  }

}
