import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_search_stock.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_image_button.dart';
import 'f_my_stock.dart';
import 'f_todays_discovery.dart';
import 'setting/s_setting.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment> with SingleTickerProviderStateMixin{

  late final tabController = TabController(length: 2, vsync: this);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: context.appColors.roundedbuttonBackground,
          pinned: true,
          actions: [
            ImageButton(
             imagePath: '$basePath/icon/stock_search.png',
              onTap: (){
               Nav.push(SearchStockScreen());
               context.showSnackbar('검색');
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_calendar.png',
              onTap: () {
                context.showSnackbar('달력');
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_settings.png',
              onTap: () {
                Nav.push(const SettingScreen());
              },
            ),

          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              title,
              tabBar,
              if(currentIndex ==0)
              MyStockFragment()
              else
                TodayDiscoveryFragment()
            ],
          )
        )
      ],
    );
  }

  Widget get title => Container(
    color: context.appColors.roundedbuttonBackground,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        '토스증권'.text.size(24).bold.make(),
        width20,
        'S&P 500'.text.size(13).bold.color(context.appColors.lessImportant).make(),
        width10,
        3019.29.toComma().text.size(13).bold.color(context.appColors.plus).make()
      ],
    ).pOnly(left: 20),
  );


  Widget get tabBar => Container(
    color: context.appColors.roundedbuttonBackground,
    child: Column(
      children: [
      TabBar(
        onTap: (index){
          setState(() {
            currentIndex = index;
          });

        },
      labelStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
      labelPadding: const EdgeInsets.symmetric(vertical: 20),
      indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
      indicatorColor: Colors.white,
      controller: tabController,
      tabs: [
        '내 주식'.text.make(),
        '오늘의 발견'.text.make()
      ],),
    height30,
     Line(color: context.appColors.divider,),
        height10
        ]

    ),
  );
  Widget get myAccount => Placeholder();
  Widget get myStocks => Placeholder();


}


