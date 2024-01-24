import 'package:flutter/material.dart';
import 'package:kwin_multivendor_app/core/core_config/config_color.dart';
import 'package:kwin_multivendor_app/core/core_config/config_dimension.dart';
import 'package:kwin_multivendor_app/core/core_functions/functions.dart';

class BannerSectionView extends StatefulWidget {
  final List<String> urlList;
  const BannerSectionView({
    super.key,
    required this.urlList,
  });

  @override
  State<BannerSectionView> createState() => _BannerSectionViewState();
}

class _BannerSectionViewState extends State<BannerSectionView> {
  int _position = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _position);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: scaleHeight(context) / 3,
          width: scaleHeight(context) / 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              Functions.buildBoxShadow(),
            ],
            border: Border.all(
              color: BLACK_LIGHT,
              width: 0.4,
            ),
          ),
          child: PageView(
            controller: _pageController,
            onPageChanged: (pageNum) {
              setState(() {
                _position = pageNum;
              });
            },
            children: widget.urlList
                .map(
                  (url) => ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 60,
          child: ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    _position = index;
                    _pageController
                        .jumpToPage(index); // Jump to the selected page
                  });
                },
                child: Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: BLACK_LIGHT,
                      width: 0.4,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      widget.urlList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemCount: widget.urlList.length,
          ),
        )
      ],
    );
  }
}
