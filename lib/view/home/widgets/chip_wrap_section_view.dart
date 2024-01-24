import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';

class ChipWrapSectionView extends StatelessWidget {
  final List<Widget> chips;
  const ChipWrapSectionView({
    super.key,
    required this.chips,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: DIMEN_SIXTEEN,
      ),
      width: scaleWidth(context),
      child: Wrap(
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: Axis.horizontal,
        verticalDirection: VerticalDirection.down,
        children: chips,
      ),
    );
  }
}
