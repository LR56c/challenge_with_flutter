// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:challenge_with_flutter/features/home/home_screen.dart' as _i1;
import 'package:challenge_with_flutter/features/map/map_screen.dart' as _i2;
import 'package:challenge_with_flutter/features/payment/payment_screen.dart'
    as _i3;
import 'package:challenge_with_flutter/features/signin/signin_screen.dart'
    as _i4;
import 'package:challenge_with_flutter/features/sms/sms_screen.dart' as _i5;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.MapScreen]
class MapRoute extends _i6.PageRouteInfo<void> {
  const MapRoute({List<_i6.PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.MapScreen();
    },
  );
}

/// generated route for
/// [_i3.PaymentScreen]
class PaymentRoute extends _i6.PageRouteInfo<void> {
  const PaymentRoute({List<_i6.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.PaymentScreen();
    },
  );
}

/// generated route for
/// [_i4.SignInScreen]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.SignInScreen();
    },
  );
}

/// generated route for
/// [_i5.SmsScreen]
class SmsRoute extends _i6.PageRouteInfo<void> {
  const SmsRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SmsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SmsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SmsScreen();
    },
  );
}
