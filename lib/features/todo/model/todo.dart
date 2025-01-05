import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    required String id,
    required String todo,
    required bool completed,
  }) = _Todo;
  // const factory Todo.empty() = TodoEmpty;
  // const factory Todo.filling() = TodoFilling;
  // const factory Todo.inactive() = TodoInactive;
  // const factory Todo.list(List<String> list) = TodoList;

  factory Todo.fromJson(Map<String, Object?> json) => _$TodoFromJson(json);
}
