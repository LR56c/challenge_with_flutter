import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../model/todo.dart';

part 'todos.g.dart';

// provider
// computed
// state

// @riverpod
// String reference(Ref ref) {
//   return 'my reference';
// }
//
// @riverpod
// int todosCounter(Ref ref) {
//   return ref.watch(todosProvider).length;
// }

@riverpod
class Todos extends _$Todos {
  @override
  // Todo build() {
  Future<List<Todo>> build() async{
    return [];
    // return const Todo.empty();
  }

  void add(String description) async {
    // state = const Todo.filling();
    // await Future.delayed(const Duration(seconds: 1));
    // state = const Todo.inactive();
    // await Future.delayed(const Duration(seconds: 1));
    // state = const Todo.list([
    //   'Todo 1',
    // ]);
    state = const AsyncLoading();
    await Future.delayed(const Duration(seconds: 1));
    final todos = state.value ?? [];
    final newTodo = Todo(
      id: const Uuid().v4(),
      todo: description,
      completed: false,
    );
    state = AsyncData([...todos, newTodo]);
  }
}
