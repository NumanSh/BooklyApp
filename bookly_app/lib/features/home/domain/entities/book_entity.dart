class BookEntity {
  final String bookId;
  final String? imageUrl;
  final String title;
  final String? author;
  final double? price;
  final double? rating;

  BookEntity(
      {required this.imageUrl,
      required this.title,
      required this.author,
      required this.price,
      required this.rating,
      required this.bookId});
}
