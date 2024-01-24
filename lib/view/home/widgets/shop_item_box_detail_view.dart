import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';
import 'package:kwin_multivendor_app/core/core_functions/functions.dart';
import 'package:kwin_multivendor_app/view/home/widgets/rating_star_view.dart';

class ShopItemBoxDetailView extends StatelessWidget {
  final Function onTapExplore;
  const ShopItemBoxDetailView({
    super.key,
    required this.onTapExplore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: DIMEN_SIXTEEN, vertical: DIMEN_TEN),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          Functions.buildBoxShadow(),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            height: scaleWidth(context) / 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(DIMEN_TEN),
              child: Image.network(
                "https://i.etsystatic.com/19468294/r/il/f722e6/3021322844/il_fullxfull.3021322844_3my9.jpg",
                fit: BoxFit.fill,
                width: scaleWidth(context) / 2,
              ),
            ),
          ),
          const SizedBox(height: DIMEN_TEN),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cherry-K",
                style: ConfigStyle.boldStyleThree(
                  DIMEN_EIGHTEEN,
                  BLACK_HEAVY,
                ),
              ),
              const RatingStarView(),
            ],
          ),
          const SizedBox(height: DIMEN_TEN),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "North Dagon,Yangon",
                style: ConfigStyle.regularStyleThree(
                  DIMEN_FOURTEEN,
                  BLACK_LIGHT,
                ),
              ),
              Text(
                "4.9",
                style: ConfigStyle.regularStyleThree(
                  DIMEN_FOURTEEN,
                  BLACK_LIGHT,
                ),
              ),
            ],
          ),
          const SizedBox(height: DIMEN_TEN),
          Row(
            children: [
              const Icon(
                Icons.favorite_border_outlined,
                color: BLACK_LIGHT,
                size: 24,
              ),
              const SizedBox(width: DIMEN_TWENTY_EIGHT),
              const Icon(
                Icons.save_alt,
                color: BLACK_LIGHT,
                size: 28,
              ),
              const Spacer(),
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
        ],
      ),
    );
  }
}
