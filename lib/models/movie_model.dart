class Movie {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double rating;
  final List<String> castNames;
  final List<String> castImages;

  Movie({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.castNames,
    required this.castImages,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id']?.toString() ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      rating: (json['rating'] ?? 0.0).toDouble(),
      castNames: List<String>.from(json['castNames'] ?? []),
      castImages: List<String>.from(json['castImages'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'rating': rating,
      'castNames': castNames,
      'castImages': castImages,
    };
  }
}
