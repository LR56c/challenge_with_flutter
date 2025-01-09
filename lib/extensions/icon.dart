import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/iconoir.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/pajamas.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:iconify_flutter/icons/ion.dart';

extension IconifyExtension on String {
  Widget iconify({Color? color, double? size}) {
    switch (this) {
      case 'iconoir.yoga':
        return Iconify(
          Iconoir.yoga,
          size: size,
          color: color,
        );
      case 'ic.facebook':
        return Iconify(
          Ic.baseline_facebook,
          size: size,
          color: color,
        );
      case 'mdi.linkedin':
        return Iconify(
          Mdi.linkedin,
          size: size,
          color: color,
        );
      case 'pajamas.twitter':
        return Iconify(
          Pajamas.twitter,
          size: size,
          color: color,
        );
      case 'ri.instagram':
        return Iconify(
          Ri.instagram_fill,
          size: size,
          color: color,
        );
      case 'ion.dribbble':
        return Iconify(
          Ion.logo_dribbble,
          size: size,
          color: color,
        );
      default:
        return const SizedBox();
    }
  }
}
