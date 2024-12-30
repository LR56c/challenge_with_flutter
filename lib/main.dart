import 'package:challenge_with_flutter/router.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final _appRouter = AppRouter();
  runApp(
    MaterialApp.router(
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
