import 'package:hive/hive.dart';

import '../../features/home/domain/entities/book_entity.dart';

// function used to save the data in a box
void saveBooksData(List<BookEntity> books, String boxName) {
  var box = Hive.box(boxName);
  box.addAll(books);
}
