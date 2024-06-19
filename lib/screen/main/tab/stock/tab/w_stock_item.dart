import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/w_height_and_width.dart';
import '../vo/vo_stock.dart';

class StockItem extends StatelessWidget {
  final Stock stock;
  const StockItem({super.key, required this.stock});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.backgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(stock.stockImagePath,width: 50,),
          width10,
          (stock.stockName).text.size(18).bold.make(),
          emptyExpanded,
          Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}
