import 'cookies.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cookie.freezed.dart';
part 'cookie.g.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class Cookie with _$Cookie {
  factory Cookie({
    required String name,
    required double stars,
    required CookieEnum difficulty,
  }) = _Cookie;

  /// Convert a JSON object into an [Cookie] instance.
  /// This enables type-safe reading of the API response.
  factory Cookie.fromJson(Map<String, dynamic> json) => _$CookieFromJson(json);
}
