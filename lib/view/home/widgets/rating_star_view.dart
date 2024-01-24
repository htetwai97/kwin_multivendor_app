import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';

class RatingStarView extends StatelessWidget {
  const RatingStarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 5.0,
      itemSize: DIMEN_SIXTEEN,
      itemBuilder: (context, index) {
        return const Icon(
          Icons.star,
          color: Colors.amber,
        );
      },
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
