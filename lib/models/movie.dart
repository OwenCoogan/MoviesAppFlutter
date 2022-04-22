
class Movie {
  final name;
  final premiered;
  final image;
  final description;
  final id;

  Movie({this.name, this.premiered,this.image, this.description, this.id});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      name: json['name'],
      premiered: json['premiered'],
      image: json['image']['medium'],
      description: json['description'],
      id: json['id'],
    );
  }

}