import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/cubit/store_cubit.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';

class VouchureWidget extends StatelessWidget {
  final Size size;

  VouchureWidget({this.size});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<StoreCubit>();
    final state = cubit.state;
    return Container(
      color: colorWhite,
      width: size.width,
      margin: EdgeInsets.only(bottom: 8.0),
      padding: EdgeInsets.only(left: 12.0, top: 12.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          buildSvgIconAndTitle(
            pathSVG: 'assets/svg/vouchure.svg',
            textWidget:
                Text('VOUCHURE', style: title.copyWith(color: colorTitle)),
          ),
          SizedBox(
            height: 15.0,
          ),
          ListView.separated(
              padding: EdgeInsets.only(bottom: 8.0),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final String heroTag =
                    'vouchureInStore${state.vouchers.data.hashCode + index}';
                final item = state.vouchers.data[index];
                return buildItemList(
                    index: index,
                    onPressItem: () {
                      navigator.pushNamed(RouteGenerator.storeVoucherScreen,
                          arguments: {
                            'idVoucher': item.id,
                            'heroTag': heroTag,
                          });
                    },
                    heroTag: heroTag,
                    urlImg: item.media != null
                        ? item.media.isNotEmpty
                            ? item.media.first.thumb
                            : ' '
                        : ' ',
                    description: item.description == null
                        ? ' '
                        : cubit.parseHtml(item.description),
                    title: item.name ?? ' ',
                    number: item.price.toString() ?? ' ');
              },
              separatorBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 6.0),
                  child: Divider(
                    thickness: 1.0,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                );
              },
              itemCount: state.vouchers.data.length)
        ],
      ),
    );
  }

  Widget buildItemList(
      {String urlImg,
      title,
      description,
      number,
      Function onPressItem,
      int index,
      String heroTag}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          onPressItem();
        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Hero(
              transitionOnUserGestures: true,
              tag: heroTag,
              child: buildCachedNetworkImage(
                  isBorderRadius: true,
                  width: 90.0,
                  height: 90.0,
                  imgUrl: urlImg),
            ),
            buildRowContent(
                title: title, description: description, number: number),
          ],
        ),
      ),
    );
  }

  Widget buildRowContent({String title, description, number}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(right: 8.0, left: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: body2.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    style: body2,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            SizedBox(width: 5.0),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: number,
                    style: body2.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff29B0B4),
                    ),
                  ),
                  TextSpan(
                    text: ' GAS',
                    style: body2.copyWith(
                      color: Color(0xff29B0B4),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
