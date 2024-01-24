import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_functions/functions.dart';
import 'package:kwin_multivendor_app/view/home/widgets/shop_item_detail_grid_view.dart';
import 'package:kwin_multivendor_app/view/products_retail/screen/products_retail_screen.dart';
import 'package:kwin_multivendor_app/view/products_whole_sale/screen/products_whole_sale_screen.dart';
import 'package:kwin_multivendor_app/view/service/screen/service_screen.dart';


class ShopGridView extends StatelessWidget {
  const ShopGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 300,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: 18,
        itemBuilder: (BuildContext ctx, index) {
          return ShopItemDetailGridView(
            onTapExplore: () {
              Functions.transition(context, const ServiceScreen());
            },
          );
        });
  }
}
