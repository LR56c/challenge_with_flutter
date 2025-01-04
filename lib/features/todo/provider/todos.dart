import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/todo.dart';

part 'todos.g.dart';

@riverpod
class Todos extends _$Todos {
  @override
  List<Todo> build() {
    return [];
  }
}
