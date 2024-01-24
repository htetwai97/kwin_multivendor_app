import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';

class HomeTitleSectionView extends StatelessWidget {
  final String title;
  const HomeTitleSectionView({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: DIMEN_SIXTEEN),
      child: Text(
        title,
        style: ConfigStyle.boldStyleThree(
          DIMEN_SIXTEEN,
          BLACK_HEAVY,
        ),
      ),
    );
  }
}
