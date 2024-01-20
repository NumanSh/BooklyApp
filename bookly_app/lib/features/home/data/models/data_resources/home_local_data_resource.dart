import 'package:bookly_app/core/themes/colors/constants.dart';
import 'package:hive/hive.dart';

import '../../../domain/entities/book_entity.dart';

abstract class HomeLocalDataResource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataResourceImpl implements HomeLocalDataResource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var box = Hive.box<BookEntity>(kfeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}
