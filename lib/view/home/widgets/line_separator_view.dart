import 'package:flutter/material.dart';

class LineSeparatorView extends StatelessWidget {
  const LineSeparatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.3,
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
    );
  }
}
