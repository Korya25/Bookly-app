import 'package:hive/hive.dart';
part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  final String? bookId;
  @HiveField(0)
  final String title;
  @HiveField(1)
  final List<String> authors;
  @HiveField(2)
  final String? publishedDate;
  @HiveField(3)
  final String? description;
  @HiveField(4)
  final num? pageCount;
  @HiveField(5)
  final num? price;
  @HiveField(6)
  final num? averageRating;
  @HiveField(7)
  final num? ratingsCount;
  @HiveField(8)
  final String? thumbnail;
  @HiveField(9)
  final List<String>? categories;

  BookEntity({
    this.bookId,
    required this.title,
    required this.authors,
    required this.publishedDate,
    required this.description,
    required this.pageCount,
    required this.price,
    required this.averageRating,
    required this.ratingsCount,
    required this.thumbnail,
    required this.categories,
  });
}
