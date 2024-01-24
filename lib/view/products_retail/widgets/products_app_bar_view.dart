import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';
import 'package:kwin_multivendor_app/core/core_functions/functions.dart';

class ProductsAppBarView extends StatelessWidget {
  const ProductsAppBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: DIMEN_SIXTEEN, vertical: DIMEN_TEN),
      decoration: BoxDecoration(
        boxShadow: [
          Functions.buildBoxShadow(),
        ],
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: DIMEN_TWENTY_FOUR,
              color: BLACK_LIGHT,
            ),
          ),
          const SizedBox(width: DIMEN_TWENTY_FOUR),
          Text(
            "Cherry-K",
            style: ConfigStyle.boldStyleThree(
              DIMEN_SIXTEEN,
              BLACK_HEAVY,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.search,
            size: DIMEN_TWENTY_FOUR,
            color: BLACK_LIGHT,
          ),
          const SizedBox(width: DIMEN_TWENTY_FOUR),
          const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.etsystatic.com/19468294/r/il/f722e6/3021322844/il_fullxfull.3021322844_3my9.jpg",
            ),
            radius: DIMEN_TWENTY,
          )
        ],
      ),
    );
  }
}
