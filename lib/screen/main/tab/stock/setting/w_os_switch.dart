import 'dart:io';

import 'package:fast_app_base/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OsSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onchanged;
  const OsSwitch({super.key, required this.value, required this.onchanged});

  @override
  Widget build(BuildContext context) {
    return !Platform.isIOS? CupertinoSwitch(value: value, onChanged: onchanged)
    : Switch(value: value , onChanged: onchanged);
  }
}
