import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/data_resources/home_local_data_resource.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../data_resources/home_remot_data_resource.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataResource homeRemoteDataResource;
  final HomeLocalDataResource homeLocalDataResource;

  HomeRepoImpl(
      {required this.homeRemoteDataResource,
      required this.homeLocalDataResource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var booksList = homeLocalDataResource.fetchFeaturedBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = homeRemoteDataResource.fetchFeaturedBooks();
      //To_do: casting
      return right(books as List<BookEntity>);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(message: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;
      var booksList = homeLocalDataResource.fetchNewestBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      //To_do: casting

      books = homeRemoteDataResource.fetchNewestBooks() as List<BookEntity>;
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(message: e.toString()));
      }
    }
  }
}
