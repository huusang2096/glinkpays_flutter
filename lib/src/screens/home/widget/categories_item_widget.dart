import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/models/home/category_response.dart';
import 'package:vipay/src/widgets/image_error_widget.dart';
import 'package:vipay/src/widgets/image_placeholder_widget.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  final Category category;
  const CategoriesItemWidget({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        category?.media?.length?.isNullOrBlank ? '' : category.media.first.url;
    return GestureDetector(
      onTap: () {
        navigator.pushNamed(
          RouteGenerator.searchVoucherCategoryScreen,
          arguments: {'categoryId': category.id.toString()},
        );
      },
      child: LayoutBuilder(builder: (context, constraints) {
        // logger.d('maxWidget ${constraints.maxWidth}  ${constraints.maxHeight}');
        return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 7,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.contain,
                errorWidget: (context, url, _) => ImageErrorWidget(),
                placeholder: (contet, url) => ImagePlacholderWidget(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
                flex: 3,
                child: AutoSizeText(
                  category.name,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ))
          ],
        );
      }),
    );
  }
}
