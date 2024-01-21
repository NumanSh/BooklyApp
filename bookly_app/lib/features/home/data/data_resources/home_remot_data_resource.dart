import 'package:bookly_app/core/themes/colors/constants.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:hive/hive.dart';

import '../../../../core/api_service/api_service.dart';
import '../../../../core/functions/save_books.dart';
import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataResource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataResourceImpl implements HomeRemoteDataResource {
  final ApiService apiServise;

  HomeRemoteDataResourceImpl(this.apiServise);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiServise.get('volumes?Filtering=free-ebooks&q=medicine');
    List<BookEntity> books = getBookList(data);
    saveBooksData(books, kfeaturedBox);
    return (books);
  }

//volumes?Filtering=free-ebooks&sorting=newest&q=medicine
  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiServise
        .get('volumes?Filtering=free-ebooks&sorting=newest&q=medicine');
    List<BookEntity> books = getBookList(data);
    saveBooksData(books, knewestBox);
    return (books);
  }

  List<BookEntity> getBookList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var element in data['items']) {
      books.add(BookModel.fromJson(element));
    }
    return books;
  }
}
