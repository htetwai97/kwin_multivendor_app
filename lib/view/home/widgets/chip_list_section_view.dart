import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/view/home/widgets/chip_item_detail_view.dart';

class ChipListSectionView extends StatelessWidget {
  final List<String> chipLabelList;
  final Function(int) onTap;
  final int selectedIndex;
  const ChipListSectionView({
    super.key,
    required this.chipLabelList,
    required this.onTap,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: DIMEN_SIXTEEN),
      height: 80,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ChipItemDetailView(
            currentIndex: index,
            selectedIndex: selectedIndex,
            label: chipLabelList[index],
            onTap: () {
              onTap(index);
            },
          );
        },
        itemCount: chipLabelList.length,
      ),
    );
  }
}
