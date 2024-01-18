import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:ulist_project/core/errors.dart';

abstract class IUsecase<Output, Input> {
  Future<Either<IFailure, Output>> call(Input params);
}

abstract class IStreamUsecase<T, Parameters> {
  Stream<T> call(Parameters params);
}

class NoParams extends Equatable {
  const NoParams();
  @override
  List<Object> get props => [];
}
