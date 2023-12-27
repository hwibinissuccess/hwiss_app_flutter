import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../notification/s_notification.dart';

class HwissAppBar extends StatefulWidget {
  static const double appBarHeight = 60;

  const HwissAppBar({super.key});

  @override
  State<HwissAppBar> createState() => _HwissAppBarState();
}

class _HwissAppBarState extends State<HwissAppBar> {
  bool _showRedDot = false;
  int _tappingCount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HwissAppBar.appBarHeight,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          width10,
          // AnimatedContainer(
          //   duration: 1000.ms,
          //   height: _tappingCount < 2 ? 60 : 30,
          //   child: Image.asset(
          //     "$basePath/icon/toss.png",
          //   ),
          // ),
          AnimatedCrossFade(
            firstChild: Image.asset(
              "$basePath/icon/toss.png",
              height: 30,
            ),
            secondChild: Image.asset(
              "$basePath/icon/map_point.png",
              height: 30,
            ),
            crossFadeState: _tappingCount < 2
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: 1500.ms,
          ),
          emptyExpanded,
          // _tappingCount.text.make(),
          Tap(
            onTap: () {
              setState(() {
                _tappingCount--;
              });
            },
            child: Image.asset(
              "$basePath/icon/map_point.png",
              height: 30,
            ),
          ),
          width10,
          Tap(
            onTap: () {
              // 알림 화면
              Nav.push(NotificationScreen());
            },
            child: Stack(
              children: [
                Image.asset(
                  "$basePath/icon/notification.png",
                  height: 30,
                ),
                if (_showRedDot)
                  Positioned.fill(
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
            )
                .animate()
                .shake(duration: 2000.ms, hz: 3)
                .then()
                .fadeOut(duration: 1000.ms),
          ),
          width10,
        ],
      ),
    );
  }
}
