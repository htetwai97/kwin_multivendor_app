import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';
import 'package:kwin_multivendor_app/view/product_description/widgets/user_info_dialog_for_add_to_cart_widget.dart';

class AddToCartButtonWidget extends StatelessWidget {
  final String buttonName;
  final IconData icon;
  final Function onTap;
  const AddToCartButtonWidget({
    super.key,
    required this.buttonName,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      child: MaterialButton(
        onPressed: () {
          onTap();
        },
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonName,
              style: ConfigStyle.regularStyleThree(
                DIMEN_FOURTEEN,
                MATERIAL_COLOR,
              ),
            ),
            const SizedBox(width: 10),
            Icon(
              icon,
              size: 20,
              color: MATERIAL_COLOR,
            ),
          ],
        ),
      ),
    );
  }
}
