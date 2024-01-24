import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_functions/functions.dart';
import 'package:kwin_multivendor_app/view/home/widgets/shop_item_box_detail_small_list_view.dart';
import 'package:kwin_multivendor_app/view/products_retail/screen/products_retail_screen.dart';
import 'package:kwin_multivendor_app/view/products_whole_sale/screen/products_whole_sale_screen.dart';
import 'package:kwin_multivendor_app/view/service/screen/service_screen.dart';

class ShopSmallListView extends StatelessWidget {
  const ShopSmallListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ShopItemBoxDetailSmallListView(
          onTapExplore: () {
            Functions.transition(context, const ServiceScreen());
          },
        );
      },
      separatorBuilder: (context, index) =>
          const SizedBox(height: DIMEN_TWENTY),
      itemCount: 12,
    );
  }
}
