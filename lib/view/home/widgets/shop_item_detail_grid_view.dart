import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';
import 'package:kwin_multivendor_app/core/core_functions/functions.dart';
import 'package:kwin_multivendor_app/view/home/widgets/rating_star_view.dart';

class ShopItemDetailGridView extends StatelessWidget {
  final Function onTapExplore;
  const ShopItemDetailGridView({
    Key? key,
    required this.onTapExplore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: scaleWidth(context) / 3,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          Functions.buildBoxShadow(),
        ],
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.save_alt,
                color: BLACK_LIGHT,
                size: 28,
              ),
              Icon(
                Icons.favorite_border_outlined,
                color: BLACK_LIGHT,
                size: 24,
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(DIMEN_TEN),
            child: Image.network(
              "https://i.etsystatic.com/19468294/r/il/f722e6/3021322844/il_fullxfull.3021322844_3my9.jpg",
              fit: BoxFit.fill,
              width: scaleWidth(context) / 4,
            ),
          ),
          const SizedBox(height: DIMEN_TEN),
          Text(
            "Cherry-K",
            style: ConfigStyle.regularStyleThree(
              DIMEN_FOURTEEN,
              BLACK_HEAVY,
            ),
          ),
          Text(
            "North Dagon,Yangon",
            style: ConfigStyle.regularStyleThree(
              DIMEN_FOURTEEN,
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
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              onTapExplore();
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(DIMEN_SIXTEEN),
            ),
            child: Text(
              "Explore",
              style: ConfigStyle.regularStyleThree(
                14,
                MATERIAL_COLOR,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
