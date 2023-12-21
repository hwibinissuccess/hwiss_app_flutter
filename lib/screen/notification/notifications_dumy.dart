import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final notificationDummies = <HwissNotification>[
  HwissNotification(
    NotificationType.hwissPay,
    '이번주 영화 한편? 롯데시네마 쿠폰이 도착했어요~!',
    DateTime.now().subtract(27.minutes),
  ),
  HwissNotification(
    NotificationType.stock,
    '주식의 모든 것을 무료로!',
    DateTime.now().subtract(1.minutes),
  ),
  HwissNotification(
    NotificationType.walk,
    '걸으면 돈이 들어와요~!',
    DateTime.now().subtract(3.minutes),
  ),
  HwissNotification(
    NotificationType.moneyTip,
    '엔화가 낮아지는데 가만히 있을건가요? \n 휘빈님, 일본으로 떠나보세요',
    DateTime.now().subtract(7.minutes),
  ),
  HwissNotification(
    NotificationType.walk,
    '1000걸음이 넘었어요! 포인트를 확인해보세요!',
    DateTime.now().subtract(9.hours),
  ),
  HwissNotification(
    NotificationType.luck,
    '오늘의 행운 쿠폰 도착!',
    DateTime.now().subtract(12.hours),
  ),
  HwissNotification(
    NotificationType.people,
    '오늘의 특가 할인! 바로 보러가기!',
    DateTime.now().subtract(1.days),
  ),
];
