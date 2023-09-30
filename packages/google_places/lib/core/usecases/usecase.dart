import 'package:dartz/dartz.dart';

import '../error/failures.dart';

abstract interface class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}