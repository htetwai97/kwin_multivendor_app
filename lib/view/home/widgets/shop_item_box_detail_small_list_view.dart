import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';
import 'package:kwin_multivendor_app/view/home/widgets/rating_star_view.dart';

class ShopItemBoxDetailSmallListView extends StatelessWidget {
  final Function onTapExplore;
  const ShopItemBoxDetailSmallListView({
    super.key,
    required this.onTapExplore,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          isThreeLine: true,
          dense: false,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              "https://i.etsystatic.com/19468294/r/il/f722e6/3021322844/il_fullxfull.3021322844_3my9.jpg",
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            "Cherry-K",
            style: ConfigStyle.regularStyleThree(
              DIMEN_FOURTEEN,
              BLACK_HEAVY,
            ),
          ),
          subtitle: Text(
            "North Dagon,Yangon",
            style: ConfigStyle.regularStyleThree(
              DIMEN_FOURTEEN,
              BLACK_LIGHT,
            ),
          ),
          trailing: MaterialButton(
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.save_alt,
                color: BLACK_LIGHT,
                size: 28,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const RatingStarView(),
                  Text(
                    "4.9",
                    style: ConfigStyle.regularStyleThree(
                      DIMEN_FOURTEEN,
                      BLACK_LIGHT,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.favorite_border_outlined,
                color: BLACK_LIGHT,
                size: 24,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          height: 0.4,
          decoration: const BoxDecoration(
            color: BLACK_LIGHT,
          ),
        ),
      ],
    );
  }
}
