import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';
import 'package:kwin_multivendor_app/view/my_cart/widgets/mycart_item_detail_view.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Row(
          children: [
            Text(
              "Total -",
              style: ConfigStyle.regularStyleThree(
                DIMEN_FOURTEEN,
                BLACK_HEAVY,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              "23458890 MMK",
              style: ConfigStyle.regularStyleThree(
                DIMEN_FOURTEEN,
                BLACK_HEAVY,
              ),
            ),
            const Spacer(),
            MaterialButton(
              color: BLACK_HEAVY,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () {},
              child: Text(
                "Check Out",
                style: ConfigStyle.regularStyleThree(
                  DIMEN_FOURTEEN,
                  MATERIAL_COLOR,
                ),
              ),
            ),
          ],
        ),
      ],
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            size: DIMEN_TWENTY_FOUR,
            color: BLACK_LIGHT,
          ),
        ),
        title: Text(
          "My Cart",
          style: ConfigStyle.boldStyleThree(
            DIMEN_SIXTEEN,
            BLACK_HEAVY,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const MyCartItemDetailView();
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemCount: 15,
            ),
          ],
        ),
      ),
    );
  }
}
