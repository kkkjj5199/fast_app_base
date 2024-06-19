import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../common/common.dart';
import '../../../notification/s_notification.dart';

class TtossaAppBar extends StatefulWidget {
  static const double appBarHeight = 60;
  const TtossaAppBar({super.key});

  @override
  State<TtossaAppBar> createState() => _TtossaAppBarState();
}

class _TtossaAppBarState extends State<TtossaAppBar> {

  bool _showRedDot = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: TtossaAppBar.appBarHeight,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          width10,
          Image.asset(
            "$basePath/icon/toss.png",
            height: 30,
          ),
          EmptyExpanded(),
          Image.asset(
            "$basePath/icon/map_point.png",
            height: 30,
          ),
          width10,
          Tap(
            onTap: () {
              //알림 화면
              Nav.push(NofiticationScreen());
            },
            child: Stack(
              children: [
                Image.asset(
                  "$basePath/icon/notification.png",
                  height: 30,
                ),
                if(_showRedDot)
                  Positioned.fill(child:Align(alignment: Alignment.topRight,
                  child: Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red) ,
                ),
                ))
              ],
            ),
          ),
          width10,
        ],
      ),
    );
  }
}
