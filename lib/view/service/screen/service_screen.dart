import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_functions/functions.dart';
import 'package:kwin_multivendor_app/view/home/widgets/chip_list_section_view.dart';
import 'package:kwin_multivendor_app/view/product_description/screen/product_description_screen.dart';
import 'package:kwin_multivendor_app/view/products_retail/widgets/product_grid_two_view.dart';
import 'package:kwin_multivendor_app/view/products_retail/widgets/product_grid_view.dart';
import 'package:kwin_multivendor_app/view/products_retail/widgets/product_item_detail_view.dart';
import 'package:kwin_multivendor_app/view/products_retail/widgets/products_app_bar_view.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ProductsAppBarView(),
              const SizedBox(height: DIMEN_TWENTY),
              GridView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 200,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 2,
                  ),
                  itemCount: 12,
                  itemBuilder: (BuildContext ctx, index) {
                    return ProductItemDetailView(
                      name: "Hello",
                      onTapExplore: () {
                        Functions.rightToLeftTransition(
                          context,
                          ProductDescriptionScreen(
                            name: "Hello",
                            description: "Description",
                            index: index,
                          ),
                        );
                      },
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
