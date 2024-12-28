
import 'package:challenge_with_flutter/models/cookies/cookies.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cookies_provider.g.dart';

@riverpod
Future<List<Cookie>> cookies(Ref ref) async {
  return [];
}
