import 'package:challenge_with_flutter/features/mental_session/model/session.dart';
import 'package:challenge_with_flutter/features/mental_session/provider/routines.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'featured_sessions.g.dart';

@riverpod
Future<List<Session>> featuredSessions(Ref ref) async{
  final routines = ref.watch(routinesProvider);
  final a = routines.value?.expand((element) => element.sessions).toList();
  a?.sort((a, b) => a.createdAt.compareTo(b.createdAt));
  return a?.take(5).toList() ?? [];
}
