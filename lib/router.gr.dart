// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:challenge_with_flutter/features/home/home_screen.dart' as _i1;
import 'package:challenge_with_flutter/features/payment/payment_screen.dart'
    as _i2;
import 'package:challenge_with_flutter/features/signin/signin_screen.dart'
    as _i3;
import 'package:challenge_with_flutter/features/sms/sms_screen.dart' as _i4;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.PaymentScreen]
class PaymentRoute extends _i5.PageRouteInfo<void> {
  const PaymentRoute({List<_i5.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.PaymentScreen();
    },
  );
}

/// generated route for
/// [_i3.SignInScreen]
class SignInRoute extends _i5.PageRouteInfo<void> {
  const SignInRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.SignInScreen();
    },
  );
}

/// generated route for
/// [_i4.SmsScreen]
class SmsRoute extends _i5.PageRouteInfo<void> {
  const SmsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SmsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SmsRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SmsScreen();
    },
  );
}
