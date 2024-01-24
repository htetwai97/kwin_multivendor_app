// import 'package:flutter/material.dart';
// import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
// import 'package:kwin_multivendor_app/view/home/widgets/chip_list_section_view.dart';
// import 'package:kwin_multivendor_app/view/products_retail/widgets/product_grid_view.dart';
// import 'package:kwin_multivendor_app/view/products_retail/widgets/products_app_bar_view.dart';
//
// class ProductsWholeSaleScreen extends StatelessWidget {
//   const ProductsWholeSaleScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               ProductsAppBarView(),
//               SizedBox(height: DIMEN_TWENTY),
//               ChipListSectionView(
//                 selectedIndex: 1,
//                 onTap: (e) {},
//                 chipLabelList: [
//                   "All",
//                   "Liposuction",
//                   "Detox",
//                   "Surgery",
//                   "Medicine",
//                   "Equipments",
//                 ],
//               ),
//               ChipListSectionView(
//                 selectedIndex: 1,
//                 onTap: (e) {},
//                 chipLabelList: [
//                   "SubCat1",
//                   "SubCat2",
//                   "SubCat3",
//                   "SubCat4",
//                   "SubCat5",
//                   "SubCat6",
//                 ],
//               ),
//
//               /// ProductGridView(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
