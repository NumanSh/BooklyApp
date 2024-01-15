class BookEntity {
  final String bookId;
  final String? imageUrl;
  final String title;
  final String? author;
  final double? price;
  final int? pageCount;

  BookEntity(
      {required this.imageUrl,
      required this.title,
      required this.author,
      required this.price,
      required this.pageCount,
      required this.bookId});
}
