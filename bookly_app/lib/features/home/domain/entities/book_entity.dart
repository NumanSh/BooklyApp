import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String? imageUrl;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String? author;
  @HiveField(4)
  final double? price;
  @HiveField(5)
  final int? pageCount;

  BookEntity(
      {required this.imageUrl,
      required this.title,
      required this.author,
      required this.price,
      required this.pageCount,
      required this.bookId});
}
