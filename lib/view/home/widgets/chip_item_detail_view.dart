import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';

class ChipItemDetailView extends StatelessWidget {
  final String label;
  final Function onTap;
  final int selectedIndex, currentIndex;
  const ChipItemDetailView({
    super.key,
    required this.label,
    required this.onTap,
    required this.selectedIndex,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 0,
      borderRadius: BorderRadius.circular(40),
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: DIMEN_TEN - 5),
        child: Chip(
          side: BorderSide.none,
          color: MaterialStateProperty.all(
            (selectedIndex == currentIndex) ? Colors.blue : Colors.grey,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              DIMEN_TWENTY,
            ),
          ),
          label: Text(
            label,
            style: ConfigStyle.regularStyleThree(
              DIMEN_FOURTEEN,
              MATERIAL_COLOR,
            ),
          ),
        ),
      ),
    );
  }
}
