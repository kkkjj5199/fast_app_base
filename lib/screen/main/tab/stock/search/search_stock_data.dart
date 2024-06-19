import 'package:fast_app_base/screen/main/tab/stock/vo/vo_simple_stock.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/util/local_json.dart';


class SearchStockData extends GetxController {
  List<SimpleStock> stocks = [];
  RxList<String> searchHistory = <String>[].obs;
  RxList<SimpleStock> autoCompleteList = <SimpleStock>[].obs;


  @override
  void onInit() {
   searchHistory.addAll(['삼성전자','LG전자','현대차','넷플릭스']);
   loadLocalStockJson();
    super.onInit();
  }

  Future<void> loadLocalStockJson() async {
    final jsonList = await LocalJson.getObjectList<SimpleStock>("json/stock_list.json");
    stocks.addAll(jsonList);
  }


  void search(String keyword){
    if(keyword.isEmpty){
      autoCompleteList.clear();
      return;
    }
    autoCompleteList.value = stocks.where((element) => element.stockName.contains(keyword)).toList();
    debugPrint(autoCompleteList.toString());
  }

  void addHistory(SimpleStock stock) {
    searchHistory.add(stock.stockName);
  }

  void removeHistory(String stockName) {
    
    searchHistory.remove(stockName);
  }

}