import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ulist_project/core/errors.dart';

import '../api_client.dart';

class CloudFirestoreService {
  CloudFirestoreService({bool isUnitTest = false});

  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<T> getList<T>(
    String path, {
    required ResponseConverter<T> converter,
  }) {
    try {
      final snapshot = _firestore.collection(path).snapshots();
      return snapshot.map((event) {
        return converter({
          "data": event.docs.map((e) {
            return {
              ...e.data(),
              "id": e.id,
            };
          }).toList(),
          "length": event.docs.length,
        });
      });
    } catch (e) {
      throw ServerFailure(message: e.toString());
    }
  }

  Future<Either<IFailure, bool>> save<T>(
    String path,
    String? docId,
    T value,
  ) async {
    try {
      final doc = _firestore.collection(path).doc(docId);
      await doc.set(
        {
          ...jsonDecode(jsonEncode(value)),
          if (docId == null) "created_at": FieldValue.serverTimestamp(),
          "updated_at": FieldValue.serverTimestamp(),
        }..remove('id'),
        SetOptions(merge: true),
      );
      return const Right(true);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  Future<Either<IFailure, bool>> delete<T>(
    String path,
    String docId,
  ) async {
    try {
      final doc = _firestore.collection(path).doc(docId);
      await doc.delete();
      return const Right(true);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
