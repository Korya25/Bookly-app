class BookEntity {
  final String title;
  final String authorName;
  final String imageUrl;
  final String catogray;
  final num price;
  final num rating;
  final String publishedDate;
  final String description;

  BookEntity({
    required this.title,
    required this.authorName,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.catogray,
    required this.publishedDate,
    required this.description,
  });
}
