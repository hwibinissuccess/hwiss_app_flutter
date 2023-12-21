import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class HwissAppBar extends StatefulWidget {

  static const double appBarHeight=60;

  const HwissAppBar({super.key});

  @override
  State<HwissAppBar> createState() => _HwissAppBarState();
}

class _HwissAppBarState extends State<HwissAppBar> {

  bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HwissAppBar.appBarHeight,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          width10,
          Image.asset(
            "$basePath/icon/toss.png",
            height: 30,
          ),
          emptyExpanded,
          Image.asset(
            "$basePath/icon/map_point.png",
            height: 30,
          ),
          width10,
          Stack(
            children: [
              Image.asset(
                "$basePath/icon/notification.png",
                height: 30,
              ),
              if(_showRedDot)Positioned.fill(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
          width10,
        ],
      ),
    );
  }
}
