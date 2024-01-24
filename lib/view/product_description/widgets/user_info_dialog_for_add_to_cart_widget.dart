import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';
import 'package:kwin_multivendor_app/core/core_functions/functions.dart';
import 'package:kwin_multivendor_app/view/product_description/widgets/user_info_text_field_view.dart';

class UserInfoDialogForAddToCartWidget extends StatelessWidget {
  const UserInfoDialogForAddToCartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
        height: scaleHeight(context) / 2,
        width: scaleWidth(context) / 2,
        decoration: BoxDecoration(
          color: MATERIAL_COLOR,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            Functions.buildBoxShadow(),
          ],
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              children: [
                const SizedBox(height: DIMEN_TWENTY),
                Text(
                  "My Information",
                  style: ConfigStyle.boldStyleThree(
                    DIMEN_EIGHTEEN,
                    BLACK_HEAVY,
                  ),
                ),
                const SizedBox(height: 10),
                UserInfoTextFieldView(
                  title: "Name",
                  hint: "Enter Name",
                  maxLine: 1,
                  descriptionController: TextEditingController(),
                  onChanged: () {},
                ),
                UserInfoTextFieldView(
                  title: "Phone",
                  hint: "Enter Phone",
                  maxLine: 1,
                  descriptionController: TextEditingController(),
                  onChanged: () {},
                ),
                UserInfoTextFieldView(
                  title: "Email",
                  hint: "Enter Email",
                  maxLine: 1,
                  descriptionController: TextEditingController(),
                  onChanged: () {},
                ),
                UserInfoTextFieldView(
                  title: "Address",
                  hint: "Enter Address",
                  maxLine: 1,
                  descriptionController: TextEditingController(),
                  onChanged: () {},
                ),
                const Spacer(),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: BLACK_HEAVY,
                  onPressed: () {},
                  child: Text(
                    "Submit",
                    style: ConfigStyle.regularStyleThree(
                      DIMEN_FOURTEEN,
                      MATERIAL_COLOR,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.close,
                color: Colors.red,
                size: DIMEN_TWENTY_FOUR,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
