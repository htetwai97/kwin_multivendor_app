import 'package:flutter/material.dart';

class SortingRadioSectionView extends StatefulWidget {
  final String textOne, textTwo, textThree;
  final int? groupValue;
  final Function(int?) onTapOptionOne, onTapOptionTwo, onTapOptionThree;
  const SortingRadioSectionView({
    super.key,
    required this.textOne,
    required this.textTwo,
    required this.textThree,
    required this.onTapOptionOne,
    required this.onTapOptionTwo,
    required this.onTapOptionThree,
    required this.groupValue,
  });
  @override
  State<SortingRadioSectionView> createState() =>
      _SortingRadioSectionViewState();
}

class _SortingRadioSectionViewState extends State<SortingRadioSectionView> {
  int? valueOne = 1;
  int? valueTwo = 2;
  int? valueThree = 3;
  int? groupValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    groupValue = widget.groupValue;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Radio(
                value: valueOne,
                groupValue: groupValue,
                onChanged: (clickValue) {
                  groupValue = clickValue;
                  widget.onTapOptionOne(clickValue);
                  setState(() {});
                }),
            Text(
              widget.textOne,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Radio(
                value: valueTwo,
                groupValue: groupValue,
                onChanged: (clickValue) {
                  groupValue = clickValue;
                  widget.onTapOptionTwo(clickValue);
                  setState(() {});
                }),
            Text(
              widget.textTwo,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Radio(
                value: valueThree,
                groupValue: groupValue,
                onChanged: (clickValue) {
                  groupValue = clickValue;
                  widget.onTapOptionThree(clickValue);
                  setState(() {});
                }),
            Text(
              widget.textThree,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            )
          ],
        ),
      ],
    );
  }
}
