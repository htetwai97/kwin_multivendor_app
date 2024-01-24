import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_functions/functions.dart';
import 'package:kwin_multivendor_app/network/response/get_medicine_list_response.dart';
import 'package:kwin_multivendor_app/view/product_description/screen/product_description_screen.dart';
import 'package:kwin_multivendor_app/view/products_retail/widgets/product_item_detail_view.dart';

class ProductGridTwoView extends StatelessWidget {
  final List<MedicineVO>? medicineList;
  final int selectedIndex;
  const ProductGridTwoView({
    Key? key,
    required this.medicineList,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 230,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 2,
        ),
        itemCount: medicineList?.length ?? 0,
        itemBuilder: (BuildContext ctx, index) {
          var t = medicineList?[index];
          return ProductItemDetailView(
            name: t?.name ?? "",
            onTapExplore: () {
              Functions.rightToLeftTransition(
                  context,
                  ProductDescriptionScreen(
                    name: t?.name ?? "",
                    description: t?.description ?? "",
                    index: selectedIndex,
                  ));
            },
          );
        });
  }
}
