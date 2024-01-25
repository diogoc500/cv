import 'package:flutter/cupertino.dart';

import '../consts.dart';

void dprint(dynamic message) {
  if (kIsDebugMode) {
    // ignore: avoid_print
    print(message);
  }
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
