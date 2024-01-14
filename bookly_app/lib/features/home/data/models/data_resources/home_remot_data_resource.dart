import '../../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataResource {
  Future<BookEntity> fetchFeaturedBooks();
  Future<BookEntity> fetchNewestBooks();
}
