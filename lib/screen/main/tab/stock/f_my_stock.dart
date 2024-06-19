import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_height_and_width.dart';
import '../../../../common/widget/w_long_button.dart';
import '../../../../common/widget/w_rounded_container.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [getmyAccount(context), height20, getmyStock(context)],
    );
  }

  Widget getmyAccount(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: context.appColors.roundedbuttonBackground,
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height20,
            '계좌'.text.make(),
            Row(
              children: [
                '444원'.text.size(24).bold.make(),
                Arrow(),
                emptyExpanded,
                RoundedContainer(
                    child: '채우기'.text.size(12).make(),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    radius: 8,
                    backgroundColor: context.appColors.buttonBackground),
              ],
            ),
            height30,
            const Line(),
            LongButton(
              title: '주문내역',
              onTap: () {},
            ),
            LongButton(
              title: '판매내역',
              onTap: () {},
            ),
          ],
        ),
      );

  Widget getmyStock(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        color: context.appColors.roundedbuttonBackground,
        child: Column(
          children: [
            height30,
            Row(
              children: [
                '관심주식'.text.bold.make(),
                emptyExpanded,
                '편집하기'.text.color(context.appColors.lessImportant).make()
              ],
            ),
            height20,
            Tap(
                onTap: () {
                  context.showSnackbar('기본');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: ['기본'.text.make(),
                      Arrow(direction: AxisDirection.up
                        ,)
                    ],
                  ),
                )),
          ],
        ),
      );
}
