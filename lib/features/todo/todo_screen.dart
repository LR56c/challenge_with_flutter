import 'package:auto_route/auto_route.dart';
import 'package:challenge_with_flutter/features/todo/provider/todos.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Screen'),
        ),
        body: Column(
          children: [
            // todos.when(
            //     empty: () {
            //       return const Center(child: Text('Empty'));
            //     }, filling: () {
            //   return const Center(child: Text('Filling'));
            // }, inactive: () {
            //   return const Center(child: Text('Inactive'));
            // }, list: (todos) {
            //   return Column(
            //     children: todos.map((todo) => Text(todo)).toList(),
            //   );
            // }),
            Text('Screen ${todos.isLoading}'),
            Text('Todos: ${todos.value?.length ?? 0}'),
            TextButton(onPressed: () {
              ref.read(todosProvider.notifier).add('New Todo');
            }, child: Text('Add'))
          ],
        ));
  }
}
