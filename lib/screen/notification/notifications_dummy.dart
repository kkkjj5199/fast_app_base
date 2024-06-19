import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_tossnotification.dart';

final notificationDummies = <TossNotification>[
  TossNotification(
    NotificationType.tossPay,
    '이번주에 영화 한편 어때? ',
    DateTime.now().subtract(27.minutes),
    isRead: true,
  ),
  TossNotification(
    NotificationType.stock,
    '이번주에 영화 한편 어때? ',
    DateTime.now().subtract(45.minutes),
    isRead: true
  ),
  TossNotification(
    NotificationType.walk,
    '이번주에 영화 한편 어때? ',
    DateTime.now().subtract(50.minutes),
  ),
  TossNotification(
    NotificationType.moneyTip,
    '이번주에 영화 한편 어때? ',
    DateTime.now().subtract(3.hours),
  ),
  TossNotification(
    NotificationType.luck,
    '이번주에 영화 한편 어때? ',
    DateTime.now().subtract(6.hours),
  ),
  TossNotification(
    NotificationType.people,
    '이번주에 영화 한편 어때? ',
    DateTime.now().subtract(11.hours),
  ),
  TossNotification(
    NotificationType.tossPay,
    '이번주에 영화 한편 어때? ',
    DateTime.now().subtract(1.days),
  ),


];
