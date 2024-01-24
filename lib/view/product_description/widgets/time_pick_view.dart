import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';

class TimePickView extends StatelessWidget {
  final String timeName;
  final Function onTapTimeIcon;

  const TimePickView({
    super.key,
    required this.timeName,
    required this.onTapTimeIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: scaleWidth(context) / 20,
        vertical: scaleWidth(context) / 65,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: BLACK_LIGHT,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            timeName,
            style: ConfigStyle.regularStyleTwo(
              DIMEN_FOURTEEN,
              BLACK_LIGHT,
            ),
          ),
          IconButton(
            onPressed: () {
              onTapTimeIcon();
            },
            icon: const Icon(
              Icons.watch_later_outlined,
              size: DIMEN_TWENTY_TWO,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
