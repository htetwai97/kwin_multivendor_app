import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';
import 'package:kwin_multivendor_app/view/home/bloc/home_bloc.dart';
import 'package:kwin_multivendor_app/view/home/widgets/chip_list_section_view.dart';
import 'package:kwin_multivendor_app/view/home/widgets/home_title_section_view.dart';
import 'package:kwin_multivendor_app/view/home/widgets/search_text_field_view.dart';
import 'package:kwin_multivendor_app/view/home/widgets/shop_grid_view.dart';
import 'package:kwin_multivendor_app/view/home/widgets/shop_large_list_view.dart';
import 'package:kwin_multivendor_app/view/home/widgets/shop_small_list_view.dart';
import 'package:kwin_multivendor_app/view/home/widgets/sort_and_change_view.dart';
import 'package:kwin_multivendor_app/view/home/widgets/sorting_show_modal_view.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // var list = [
    //   "POS",
    //   "Clinic",
    //   "Ecommerce",
    //   "Delivery",
    //   "Bubble Tea",
    //   "Asthestic"
    // ];
    //
    // List<Widget> createCategory() {
    //   List<Widget> widgets = list
    //       .map(
    //         (category) => ChipItemDetailView(
    //           label: category,
    //         ),
    //       )
    //       .toList();
    //   return widgets;
    // }

    return SafeArea(
      child: ChangeNotifierProvider(
        create: (context) => HomeBloc(),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Available Shops",
                    style: ConfigStyle.boldStyleThree(
                      DIMEN_EIGHTEEN,
                      BLACK_HEAVY,
                    ),
                  ),
                ),
                SearchTextFieldView(
                  descriptionController: TextEditingController(),
                  onChanged: () {},
                ),
                const HomeTitleSectionView(
                  title: "Township",
                ),
                ChipListSectionView(
                  selectedIndex: 1,
                  onTap: (e) {},
                  chipLabelList: [
                    "Dawbon",
                    "Dala",
                    "Yay Kyaw",
                    "Botahtaung",
                    "Pazunhtaung",
                    "Lathar",
                    "Lanmataw",
                    "Kyi Myin tine",
                    "Thar Kay Ta",
                    "Dawbon",
                    "Dala",
                    "Yay Kyaw",
                    "Botahtaung",
                    "Pazunhtaung",
                    "Lathar",
                    "Lanmataw",
                    "Kyi Myin tine",
                    "Thar Kay Ta",
                  ],
                ),
                // HomeTitleSectionView(
                //   title: "Category",
                // ),
                // const SizedBox(height: 10),
                // ChipWrapSectionView(
                //   chips: createCategory(),
                // ),
                const SizedBox(height: 10),
                Consumer<HomeBloc>(
                  builder: (context, bloc, child) => SortAndChangeView(
                    onTapSortIcon: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return SortingShowModalView(
                              groupValue: 1,
                              textOne: "Retail",
                              textTwo: "Whole Sale",
                              textThree: "Service",
                              heading: "Filtered by",
                              onTapOptionThree: (value) {},
                              onTapOptionTwo: (value) {},
                              onTapOptionOne: (value) {},
                            );
                          });
                    },
                    onTapViewIcon: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return SortingShowModalView(
                              groupValue: bloc.viewGroupValue,
                              textOne: "Small List",
                              textTwo: "Large List",
                              textThree: "Grid",
                              heading: "View as",
                              onTapOptionThree: (value) {
                                bloc.onChangeView(value);
                                Future.delayed(
                                        const Duration(milliseconds: 500))
                                    .then((value) {
                                  Navigator.pop(context);
                                });
                              },
                              onTapOptionTwo: (value) {
                                bloc.onChangeView(value);
                                Future.delayed(
                                        const Duration(milliseconds: 500))
                                    .then((value) {
                                  Navigator.pop(context);
                                });
                              },
                              onTapOptionOne: (value) {
                                bloc.onChangeView(value);
                                Future.delayed(
                                        const Duration(milliseconds: 500))
                                    .then((value) {
                                  Navigator.pop(context);
                                });
                              },
                            );
                          });
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Selector<HomeBloc, int?>(
                    selector: (context, bloc) => bloc.viewGroupValue,
                    builder: (context, groupValue, child) {
                      if (groupValue == 1) {
                        return const ShopSmallListView();
                      } else if (groupValue == 2) {
                        return const ShopLargeListView();
                      } else if (groupValue == 3) {
                        return const ShopGridView();
                      } else {
                        return Container(); // Handle other cases or return a default widget
                      }
                    }),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
