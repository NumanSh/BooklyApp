import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

import '../../../../../core/api_service/api_service.dart';
import '../../../domain/entities/book_entity.dart';

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
    return getBookList(data);
  }

//volumes?Filtering=free-ebooks&sorting=newest&q=medicine
  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiServise
        .get('volumes?Filtering=free-ebooks&sorting=newest&q=medicine');
    return getBookList(data);
  }

  List<BookEntity> getBookList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var element in data['items']) {
      books.add(BookModel.fromJson(element));
    }
    return books;
  }
}
