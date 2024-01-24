import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';
import 'package:kwin_multivendor_app/view/product_description/widgets/time_pick_view.dart';

class TimePickSectionRowView extends StatelessWidget {
  final String title;
  final String selectedTime;
  final Function(String) onPickTime;
  const TimePickSectionRowView({
    Key? key,
    required this.title,
    required this.selectedTime,
    required this.onPickTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: ConfigStyle.boldStyleTwo(DIMEN_SIXTEEN, Colors.black87),
          ),
          const SizedBox(height: 10),
          TimePickView(
            timeName: selectedTime,
            onTapTimeIcon: () async {
              final TimeOfDay? picked = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.dial,
              );
              if (picked != null) {
                onPickTime("${picked.hour}:${picked.minute}");
              }
            },
          ),
        ],
      ),
    );
  }
}
