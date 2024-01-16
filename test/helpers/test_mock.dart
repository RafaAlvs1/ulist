import 'package:flutter/material.dart';
import 'package:mockito/annotations.dart';
import 'package:ulist_project/features/todo/domain/repositories.dart';

@GenerateMocks([
  ITodoRepository,
])
@GenerateNiceMocks([
  MockSpec<BuildContext>(),
])
void main() {}
