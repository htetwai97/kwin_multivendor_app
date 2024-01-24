import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';
import 'package:kwin_multivendor_app/core/core_functions/functions.dart';
import 'package:kwin_multivendor_app/view/home/widgets/rating_star_view.dart';

class ProductItemDetailView extends StatelessWidget {
  final Function onTapExplore;
  final String name;
  const ProductItemDetailView({
    Key? key,
    required this.onTapExplore,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTapExplore();
      },
      child: Container(
        width: scaleWidth(context) / 3,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(12),
        //   boxShadow: [
        //     Functions.buildBoxShadow(),
        //   ],
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(DIMEN_TEN),
              child: Image.network(
                "https://cdn.vectorstock.com/i/preview-1x/58/47/liposuction-procedure-before-and-after-cartoon-vector-33195847.jpg",
                fit: BoxFit.fill,
                width: scaleWidth(context) / 4,
              ),
            ),
            const SizedBox(height: DIMEN_TEN),
            Text(
              name,
              maxLines: 4,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.ellipsis,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "234500 MMK",
              style: ConfigStyle.regularStyleThree(
                DIMEN_FOURTEEN - 2,
                BLACK_LIGHT,
              ),
            ),
            const RatingStarView(),
            Text(
              "4.9",
              style: ConfigStyle.regularStyleThree(
                DIMEN_FOURTEEN,
                BLACK_LIGHT,
              ),
            ),

            // const Align(
            //   alignment: Alignment.bottomRight,
            //   child: Icon(
            //     Icons.favorite_border,
            //     color: BLACK_LIGHT,
            //     size: 26,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
