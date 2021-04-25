import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/screens/voucher/widget/voucher_clip_path.dart';
import 'package:vipay/src/widgets/box_discount_widget.dart';

class VoucherItem extends StatelessWidget {
  final FoodData voucher;
  final int index;
  VoucherItem({Key key, this.voucher, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: _buildVoucherWidget(context, voucher, index),
    );
  }

  Widget _buildVoucherWidget(
      BuildContext context, FoodData voucher, int index) {
    String _saleEndTime = voucher.saleEndTime ?? '--/--/----';
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: () {
          navigator.pushNamed(RouteGenerator.storeVoucherScreen, arguments: {
            'heroTag': 'heroTag voucher ${voucher.hashCode + index}',
            'idVoucher': voucher.id,
            'isExistStoreScreen': false
          });
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
              BoxShadow(
                  color: Theme.of(context).focusColor.withOpacity(0.1),
                  blurRadius: 15,
                  offset: Offset(0, 5))
            ]),
            child: Column(
              children: <Widget>[
                Container(
                  height: 88,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: ClipPath(
                          clipper: CustomImageVoucherClipPath(radius: 8),
                          child: Stack(
                            children: [
                              Hero(
                                tag:
                                    'heroTag voucher ${voucher.hashCode + index}',
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey[300]),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        spreadRadius: 5,
                                        blurRadius: 10,
                                        offset: Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                        (voucher?.media?.isEmpty ?? true)
                                            ? ''
                                            : voucher?.media?.first?.url ?? '',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              BoxDicountWidget(
                                discount: voucher?.discountPrice,
                                iconDiscount: Icons.arrow_downward,
                                sizeIcon: 18,
                                horizontalPadding: 2.0,
                                verticalPadding: 2.0,
                                positionedTop: 0,
                                positionedLeft: 0,
                                fontSize: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: ClipPath(
                          clipper: CustomContentVoucherClipPath(radius: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey[300]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 5,
                                  blurRadius: 10,
                                  offset:
                                      Offset.zero, // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 8.0),
                              color: Colors.transparent,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    voucher?.name ?? '',
                                    style: body2.apply(
                                      fontWeightDelta: 2,
                                      color: Color(0xFF87D65A),
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    Helper.skipHtml(voucher?.description ?? ''),
                                    style: caption,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  voucher.saleEndTime != null
                                      ? Text(
                                          'HSD : $_saleEndTime',
                                          style: body2.apply(
                                            fontWeightDelta: 2,
                                            color: Colors.red,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        )
                                      : Container(),
                                  // Helper.getPrice(
                                  //     voucher.price.toDouble())
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
