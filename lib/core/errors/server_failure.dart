import 'failure.dart';

class ServerFailure extends IFailure {
  final String? title;
  final String? message;

  const ServerFailure({
    this.message,
    this.title,
  });

  @override
  List<Object?> get props => [
        message,
        title,
      ];
}
