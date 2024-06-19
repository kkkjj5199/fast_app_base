import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/w_os_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchMenu extends StatelessWidget {
  final String title;
  final bool isOn;
  final ValueChanged<bool> onChanged;
  const SwitchMenu({required this.title, required this.isOn, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.make(),
        emptyExpanded,
        OsSwitch(value: isOn, onchanged: onChanged)


      ],
    ).p20();
  }
}
