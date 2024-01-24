import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';
import 'package:kwin_multivendor_app/view/product_description/widgets/add_to_cart_button_widget.dart';
import 'package:kwin_multivendor_app/view/product_description/widgets/date_pick_section_row_view.dart';
import 'package:kwin_multivendor_app/view/product_description/widgets/drop_down_section_view.dart';
import 'package:kwin_multivendor_app/view/product_description/widgets/text_form_section_view_widget.dart';
import 'package:kwin_multivendor_app/view/product_description/widgets/time_pick_section_row_view.dart';

class AppointmentFormScreen extends StatelessWidget {
  const AppointmentFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MATERIAL_COLOR,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // DropDownSectionView(
                //   menuTitle: "menuTitle",
                //   selectedValue: "selectedValue",
                //   onChoose: (newValue) {},
                //   list: [],
                // ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                    Text(
                      "Appointment Form",
                      style: ConfigStyle.boldStyleThree(
                        16,
                        BLACK_HEAVY,
                      ),
                    ),
                    SizedBox(
                      width: scaleWidth(context) / 5,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                DropDownSectionView(
                  title: "Patient Status",
                  menuTitle: "menuTitle",
                  selectedValue: "selectedValue",
                  onChoose: (e) {},
                  list: [],
                ),
                const SizedBox(height: 10),
                TextFormSectionViewWidget(
                  title: "Name",
                  hint: "Enter Name",
                  descriptionController: TextEditingController(),
                  onChanged: () {},
                ),
                TextFormSectionViewWidget(
                  title: "Phone",
                  hint: "Enter phone",
                  descriptionController: TextEditingController(),
                  onChanged: () {},
                ),
                TextFormSectionViewWidget(
                  title: "Email",
                  hint: "Enter email",
                  descriptionController: TextEditingController(),
                  onChanged: () {},
                ),
                DropDownSectionView(
                  title: "Select Doctor",
                  menuTitle: "menuTitle",
                  selectedValue: "selectedValue",
                  onChoose: (e) {},
                  list: [],
                ),
                const SizedBox(height: 10),
                TextFormSectionViewWidget(
                  title: "Description",
                  hint: "Enter Description",
                  maxLine: 3,
                  descriptionController: TextEditingController(),
                  onChanged: () {},
                ),
                DatePickSectionRowView(
                  title: "Date",
                  selectedDate: "selectedDate",
                  onPickDate: (e) {},
                ),
                TimePickSectionRowView(
                  title: "Time",
                  selectedTime: "selectedTime",
                  onPickTime: (e) {},
                ),
                const SizedBox(height: 20),
                AddToCartButtonWidget(
                  buttonName: "Save",
                  icon: Icons.save_alt_outlined,
                  onTap: () {},
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
