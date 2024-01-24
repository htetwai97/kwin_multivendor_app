import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';

class SortAndChangeView extends StatelessWidget {
  final Function onTapSortIcon, onTapViewIcon;
  const SortAndChangeView({
    super.key,
    required this.onTapSortIcon,
    required this.onTapViewIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: DIMEN_SIXTEEN),
      child: Row(
        children: [
          InkWell(
            child: const Icon(
              Icons.filter_list_outlined,
              color: BLACK_LIGHT,
              size: DIMEN_TWENTY_EIGHT,
            ),
            onTap: () {
              onTapSortIcon();
            },
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              onTapViewIcon();
            },
            child: const Icon(
              Icons.view_list_outlined,
              color: BLACK_LIGHT,
              size: DIMEN_TWENTY_EIGHT,
            ),
          ),
        ],
      ),
    );
  }
}
