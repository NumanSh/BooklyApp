import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

// i used dartz package
abstract class HomeRepo {
  // Either is a function from dartz to do one of the two outcomes
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}
