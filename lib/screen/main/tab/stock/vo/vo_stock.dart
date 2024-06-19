import 'package:fast_app_base/screen/main/tab/stock/vo/vo_popular_stock.dart';

class Stock extends PopularStock {
  final String stockImagePath;

  Stock(
      {required super.yesterdayCloserPrice,
      required super.currentPrice,
      required super.stockName,
      required this.stockImagePath});
}
