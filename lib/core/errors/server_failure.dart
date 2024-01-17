import 'failure.dart';

class ServerFailure extends IFailure {
  final String? message;

  const ServerFailure({this.message});

  @override
  List<Object?> get props => [message];
}
