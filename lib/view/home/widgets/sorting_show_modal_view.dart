import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';
import 'package:kwin_multivendor_app/view/home/widgets/line_separator_view.dart';
import 'package:kwin_multivendor_app/view/home/widgets/sorting_radio_list_section_view.dart';

class SortingShowModalView extends StatefulWidget {
  final String heading, textOne, textTwo, textThree;
  final int? groupValue;
  final Function(int?) onTapOptionOne, onTapOptionTwo, onTapOptionThree;
  const SortingShowModalView({
    super.key,
    required this.textOne,
    required this.textTwo,
    required this.textThree,
    required this.heading,
    required this.onTapOptionThree,
    required this.onTapOptionTwo,
    required this.onTapOptionOne,
    required this.groupValue,
  });

  @override
  State<SortingShowModalView> createState() => _SortingShowModalViewState();
}

class _SortingShowModalViewState extends State<SortingShowModalView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MATERIAL_COLOR,
      height: scaleHeight(context) / 2.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: DIMEN_TWENTY_EIGHT + 2,
              right: DIMEN_TWENTY_EIGHT + 2,
              top: DIMEN_TWENTY_EIGHT,
            ),
            child: Text(
              widget.heading,
              style: ConfigStyle.regularStyleThree(
                DIMEN_TWENTY_FOUR,
                BLACK_HEAVY,
              ),
            ),
          ),
          const SizedBox(height: DIMEN_TWENTY),
          const LineSeparatorView(),
          const SizedBox(height: DIMEN_TWENTY_EIGHT + 2),
          SortingRadioSectionView(
            groupValue: widget.groupValue,
            textOne: widget.textOne,
            textTwo: widget.textTwo,
            textThree: widget.textThree,
            onTapOptionOne: (v) {
              widget.onTapOptionOne(v);
            },
            onTapOptionTwo: (v) {
              widget.onTapOptionTwo(v);
            },
            onTapOptionThree: (v) {
              widget.onTapOptionThree(v);
            },
          ),
        ],
      ),
    );
  }
}
