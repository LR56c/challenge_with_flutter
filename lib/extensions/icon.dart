import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/iconoir.dart';

extension IconifyExtension on String {
  Widget iconify({Color? color, double? size}) {
    switch (this) {
      case 'iconoir.yoga':
        return Iconify(Iconoir.yoga,size: size, color: color,);
      default:
        return const SizedBox();
    }
  }
}
