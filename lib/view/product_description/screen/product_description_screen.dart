import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';
import 'package:kwin_multivendor_app/core/core_functions/functions.dart';
import 'package:kwin_multivendor_app/view/my_cart/screen/my_cart_screen.dart';
import 'package:kwin_multivendor_app/view/product_description/screen/appointment_form_screen.dart';
import 'package:kwin_multivendor_app/view/product_description/widgets/add_to_cart_button_widget.dart';
import 'package:kwin_multivendor_app/view/product_description/widgets/banner_section_view.dart';
import 'package:kwin_multivendor_app/view/product_description/widgets/product_info_view.dart';
import 'package:kwin_multivendor_app/view/product_description/widgets/user_info_dialog_for_add_to_cart_widget.dart';

class ProductDescriptionScreen extends StatelessWidget {
  final String name, description;
  final int index;
  const ProductDescriptionScreen({
    Key? key,
    required this.name,
    required this.description,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            "Product Description",
            style: ConfigStyle.boldStyleThree(
              DIMEN_SIXTEEN,
              BLACK_HEAVY,
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                Functions.transition(
                  context,
                  const MyCartScreen(),
                );
              },
              child: const Icon(Icons.shopping_cart),
            ),
            const SizedBox(width: 16),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: DIMEN_SIXTEEN, vertical: DIMEN_SIXTEEN),
            child: Column(
              children: [
                const BannerSectionView(
                  urlList: [
                    "https://cdn.vectorstock.com/i/preview-1x/58/47/liposuction-procedure-before-and-after-cartoon-vector-33195847.jpg",
                    "https://media.istockphoto.com/id/1204448682/vector/liposuction-procedure-before-and-after-banner-flat-vector-illustration-isolated.jpg?s=612x612&w=0&k=20&c=QUgylcC4kA-s8aAHwQenxbpwj7SaTaTZ52Vi9t0hMMM=",
                    "https://hws.raadinahealth.com/images/user_upload/blog/en-liposuction/4_1666777012_large.webp",
                  ],
                ),
                const SizedBox(height: 20),
                ProductInfoView(
                  name: name,
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Description",
                    style: ConfigStyle.boldStyleThree(
                      DIMEN_EIGHTEEN,
                      BLACK_HEAVY,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    description,
                    style: ConfigStyle.regularStyleThree(
                      DIMEN_FOURTEEN,
                      BLACK_LIGHT,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                AddToCartButtonWidget(
                  buttonName: index == 0 ? "Make Appointment" : "Add to Cart",
                  icon: index == 0
                      ? Icons.date_range_outlined
                      : Icons.shopping_cart_outlined,
                  onTap: () {
                    if (index == 1) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const UserInfoDialogForAddToCartWidget();
                          });
                    } else {
                      Functions.transition(
                          context, const AppointmentFormScreen());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
