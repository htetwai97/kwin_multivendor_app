import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_config/config_style.dart';

class MyCartItemDetailView extends StatelessWidget {
  const MyCartItemDetailView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 100,
      isThreeLine: true,
      dense: false,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGAwMFt-M4xfhAVvCo8HJV32ZHWdcsecd5nYCsX6H4fMn_phsVaXEF9jdTbL5Jq8fapgY&usqp=CAU"),
      ),
      title: Text(
        "Liposuction",
        style: ConfigStyle.regularStyleThree(
          DIMEN_FOURTEEN,
          BLACK_HEAVY,
        ),
      ),
      subtitle: Text(
        "234500 MMK",
        style: ConfigStyle.regularStyleThree(
          DIMEN_FOURTEEN,
          BLACK_LIGHT,
        ),
      ),
      trailing: Container(
        width: 100,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.remove,
              color: BLACK_LIGHT,
              size: 30,
            ),
            Text(
              "4",
              style: ConfigStyle.regularStyleThree(
                DIMEN_FOURTEEN,
                BLACK_LIGHT,
              ),
            ),
            const Icon(
              Icons.add,
              color: BLACK_LIGHT,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
