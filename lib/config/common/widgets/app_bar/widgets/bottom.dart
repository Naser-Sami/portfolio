import 'package:flutter/material.dart';

PreferredSizeWidget? bottom(BuildContext context) {
  return const PreferredSize(
    preferredSize: Size.fromHeight(1.0),
    child: Divider(),
  );
}
