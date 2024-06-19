import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_search_stock.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 's_stock_detail.dart';

class SearchAutoComplete extends StatelessWidget with SearchStockDataProvider{
  final TextEditingController controller;
   //const --> error
  SearchAutoComplete({super.key, required this.controller});


  // const late error 이유: 현재 searchData는 위젯이 생성될때 값이 할당되는 변수가 아니기 때문에  생성자 const 에러가 난다.


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      final stock = searchData.autoCompleteList[index];
      final stockName = searchData.autoCompleteList[index].stockName;

      return Tap(
            onTap: () {
              controller.clear();
              searchData.addHistory(stock);
              Nav.push(StockDetailScreen(stockName: stockName,));
            },
            child: searchData.autoCompleteList[index].stockName.text.make().p(
                20));


    },
    itemCount: searchData.autoCompleteList.length,);

  }
}
