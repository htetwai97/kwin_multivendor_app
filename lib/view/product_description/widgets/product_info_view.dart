import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';
import 'package:kwin_multivendor_app/view/home/widgets/rating_star_view.dart';

class ProductInfoView extends StatelessWidget {
  final String name;
  const ProductInfoView({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 300,
              child: Text(
                name,
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
                style: ConfigStyle.boldStyleThree(
                  DIMEN_TWENTY,
                  BLACK_HEAVY,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "234500 MMK",
              style: ConfigStyle.regularStyleThree(
                DIMEN_FOURTEEN,
                BLACK_LIGHT,
              ),
            ),
            const SizedBox(height: 10),
            const RatingStarView(),
            const SizedBox(height: 10),
            Text(
              "4.8",
              style: ConfigStyle.regularStyleThree(
                DIMEN_FOURTEEN,
                BLACK_LIGHT,
              ),
            ),
          ],
        ),
        const Icon(
          Icons.favorite,
          size: 28,
          color: Colors.red,
        )
      ],
    );
  }
}
