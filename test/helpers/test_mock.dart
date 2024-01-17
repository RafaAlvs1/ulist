import 'package:flutter/material.dart';
import 'package:mockito/annotations.dart';
import 'package:ulist_project/features/todo/data/datasources.dart';
import 'package:ulist_project/features/todo/domain/repositories.dart';

@GenerateMocks([
  ITodoRepository,
  ITodoRemoteDatasource,
])

@GenerateNiceMocks([
  MockSpec<BuildContext>(),
])

void main() {}
