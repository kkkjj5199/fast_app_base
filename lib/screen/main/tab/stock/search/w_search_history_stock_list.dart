import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/common/data/preference/app_preferences.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_search_stock.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchHistoryStockList extends StatefulWidget {
  const SearchHistoryStockList({super.key});

  @override
  State<SearchHistoryStockList> createState() => _SearchHistoryStockListState();
}

class _SearchHistoryStockListState extends State<SearchHistoryStockList>
    with SearchStockDataProvider {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 65,
        child: Obx(()
    =>
        ListView.builder(
          padding: const EdgeInsets.only(top: 5),
          scrollDirection: Axis.horizontal,
          itemCount: searchData.searchHistory.length,
          itemBuilder: (context, index) {
            final stockName = searchData.searchHistory[index];
            return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: Row(
                      children: [
                       Tap(onTap: (){
                         Nav.push(StockDetailScreen(stockName: stockName));
                       }, 
                        child: stockName.text.make()),
                        Tap(onTap: () {
                          searchData.removeHistory(stockName);
                        },
                        child: Icon(Icons.close))
                      ],
                    ).box.withRounded(value: 6).color(context.appColors.roundedbuttonBackground).p8.make(),
                  ),
                ],
              );
          },
        )
    ));
  }
}
