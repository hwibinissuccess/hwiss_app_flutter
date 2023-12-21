import 'package:fast_app_base/screen/notification/vo/notification_type.dart';

class HwissNotification {
  final NotificationType type;
  final String description;
  final DateTime time;
  bool isRead;

  HwissNotification(
    this.type,
    this.description,
    this.time, {
    this.isRead = false,
  });
}
