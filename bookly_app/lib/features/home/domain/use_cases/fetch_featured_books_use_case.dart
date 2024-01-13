import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_cases/use_case.dart';
import '../entities/book_entity.dart';

class FetchFeaturedBooksUseCase extends UseCases<List<BookEntity>, void> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([void parameter]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
