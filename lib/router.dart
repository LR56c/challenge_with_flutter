import 'package:auto_route/auto_route.dart';
import 'package:challenge_with_flutter/router.gr.dart';
import 'package:flutter/widgets.dart';

// final router = GoRouter(
//   initialLocation: '/',
//   routes: [
//     GoRoute(
//       path: '/',
//       name: 'home',
//       builder: (context, state) => const HomeScreen(),
//     ),
//     GoRoute(
//       path: '/signin',
//       name: 'signin',
//       builder: (context, state) => const SignInDemo(),
//     ),
//   ],
// );

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: SignInRoute.page),
    AutoRoute(page: PaymentRoute.page),
    AutoRoute(page: SmsRoute.page),
    AutoRoute(page: MapRoute.page),
    AutoRoute(page: TodoRoute.page),
    AutoRoute(page: CounterRoute.page),
    AutoRoute(page: ChristmasCookiesRoute.page),
    AutoRoute(page: ProfileCardRoute.page),
    AutoRoute(page: MentalSessionRoute.page,
      children: [
        AutoRoute(page: PracticeRoute.page),
        AutoRoute(page: JournalRoute.page),
        AutoRoute(page: NotesRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ]
    ),
  ];
}
