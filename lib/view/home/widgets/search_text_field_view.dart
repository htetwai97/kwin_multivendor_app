import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';
import 'package:kwin_multivendor_app/core/core_functions/functions.dart';

class SearchTextFieldView extends StatelessWidget {
  final TextEditingController descriptionController;
  final Function onChanged;
  final String hint;
  const SearchTextFieldView({
    Key? key,
    required this.descriptionController,
    required this.onChanged,
    this.hint = "Search by shops",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: DIMEN_SIXTEEN,
        vertical: DIMEN_SIXTEEN,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [Functions.buildBoxShadow()],
        color: Colors.white70,
      ),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter the reason';
          }
          return null;
        },
        maxLines: 1,
        onChanged: (text) {
          onChanged();
        },
        controller: descriptionController,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.blue,
          ),
          isDense: true,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: hint,
          hintStyle: ConfigStyle.regularStyleTwo(
            DIMEN_FOURTEEN,
            BLACK_LIGHT,
          ),
        ),
      ),
    );
  }
}
