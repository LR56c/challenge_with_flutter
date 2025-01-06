import 'package:challenge_with_flutter/features/mental_session/model/announce.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
part 'announces.g.dart';

@riverpod
Future<List<Announce>> announces(Ref ref) async {
  return List.generate(3, (index) {
    return Announce(
      id: const Uuid().v4(),
      title: 'Title $index',
      description: 'Description $index',
      icon: 'iconoir.yoga',
      color: '',
    );
  });
}
