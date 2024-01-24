// import 'package:flutter/material.dart';
// import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
// import 'package:kwin_multivendor_app/view/home/widgets/chip_list_section_view.dart';
// import 'package:kwin_multivendor_app/view/products_retail/bloc/products_retail_bloc.dart';
// import 'package:kwin_multivendor_app/view/products_retail/widgets/product_grid_two_view.dart';
// import 'package:kwin_multivendor_app/view/products_retail/widgets/product_grid_view.dart';
// import 'package:kwin_multivendor_app/view/products_retail/widgets/products_app_bar_view.dart';
// import 'package:provider/provider.dart';
//
// class ProductsRetailScreen extends StatelessWidget {
//   const ProductsRetailScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: ChangeNotifierProvider(
//         create: (context) => ProductsRetailBloc(),
//         child: Scaffold(
//           body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 const ProductsAppBarView(),
//                 const SizedBox(height: DIMEN_TWENTY),
//                 Consumer<ProductsRetailBloc>(
//                   builder: (context, bloc, child) => ChipListSectionView(
//                     selectedIndex: bloc.selectedIndex,
//                     onTap: (index) {
//                       bloc.onTapChip(index);
//                     },
//                     chipLabelList: const [
//                       "Treatments",
//                       "Medicines",
//                     ],
//                   ),
//                 ),
//                 Consumer<ProductsRetailBloc>(
//                   builder: (context, bloc, child) => (bloc.selectedIndex == 0)
//                       ? ProductGridView(
//                           treatmentList: bloc.treatments,
//                           selectedIndex: bloc.selectedIndex,
//                         )
//                       : ProductGridTwoView(
//                           medicineList: bloc.medicines,
//                           selectedIndex: bloc.selectedIndex,
//                         ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
