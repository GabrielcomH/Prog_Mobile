class Destination {
  final String id;
  final String name;
  final String location;
  final String description;
  final String imageUrl;
  final double rating;

  Destination({
    required this.id,
    required this.name,
    required this.location,
    required this.description,
    required this.imageUrl,
    required this.rating,
  });

  String get formattedRating => rating.toStringAsFixed(1);
  
  bool get isHighlyRated => rating >= 4.5;
}