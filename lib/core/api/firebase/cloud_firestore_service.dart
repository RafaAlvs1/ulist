import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ulist_project/core/errors.dart';

import '../api_client.dart';
import '../isolate_parser.dart';

class CloudFirestoreService {
  CloudFirestoreService({bool isUnitTest = false}) {}

  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Either<IFailure, T>> getList<T>(
    String path, {
    required ResponseConverter<T> converter,
    bool isIsolate = true,
  }) async {
    try {
      final snapshot = await _firestore.collection(path).get();
      final json = {
        "data": snapshot.docs.map((e) => e.data()).toList(),
        "lenght": snapshot.docs.length,
      };

      if (!isIsolate) {
        return Right(converter(json));
      }

      final isolateParse = IsolateParser<T>(json, converter);
      final result = await isolateParse.parseInBackground();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  Future<Either<IFailure, T>> getDoc<T>(
    String path,
    String docId, {
    required ResponseConverter<T> converter,
    bool isIsolate = true,
  }) async {
    try {
      final snapshot = await _firestore.collection(path).doc(docId).get();
      final json = snapshot.data() ?? {};

      if (!isIsolate) {
        return Right(converter(json));
      }

      final isolateParse = IsolateParser<T>(json, converter);
      final result = await isolateParse.parseInBackground();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
