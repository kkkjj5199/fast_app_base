import 'package:fast_app_base/screen/main/tab/stock/vo/vo_simple_stock.dart';

class PopularStock extends SimpleStock{

  final int yesterdayCloserPrice;
  final int currentPrice;


  PopularStock({ required String stockName,required this.yesterdayCloserPrice, required this.currentPrice, }) : super(stockName);



}


