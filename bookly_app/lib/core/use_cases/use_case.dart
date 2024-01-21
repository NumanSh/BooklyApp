import 'package:dartz/dartz.dart';

import '../errors/failure.dart';

abstract class UseCases<T, Parameter> {
  Future<Either<Failure, T>> call([Parameter? parameter]);
}
