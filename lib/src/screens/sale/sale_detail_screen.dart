import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/screens/sale/cubit/sale_detail_cubit.dart';
import 'package:vipay/src/screens/sale/widgets/app_bar_sale_widget.dart';
import 'package:vipay/src/screens/sale/widgets/button_join_now.dart';
import 'package:vipay/src/screens/sale/widgets/contact_help_widget.dart';
import 'package:vipay/src/screens/sale/widgets/discount_information_widget.dart';
import 'package:vipay/src/screens/sale/widgets/item_list_sale_widget.dart';
import 'package:vipay/src/screens/sale/widgets/navigation_bar_widget.dart';
import 'package:vipay/src/screens/sale/widgets/policy_terms_widget.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart'
    as common;
import 'package:vipay/src/widgets/box_discount_widget.dart';

class SaleDetailScreen extends CubitWidget<SaleDetailCubit, SaleDetailState> {
  final String heroTag;
  final List<String> listTitleNavigationBar;
  final List<Function> listFunctionNavigationBar;

  SaleDetailScreen(
      {this.heroTag,
      this.listTitleNavigationBar,
      this.listFunctionNavigationBar});

  static BlocProvider<SaleDetailCubit> provider(
      {String heroTag,
      FoodData voucher,
      List<String> listTitleNavigationBar,
      List<Function> listFunctionNavigationBar}) {
    return BlocProvider(
      create: (context) => SaleDetailCubit(voucher),
      child: SaleDetailScreen(
        heroTag: heroTag,
        listFunctionNavigationBar: listFunctionNavigationBar,
        listTitleNavigationBar: listTitleNavigationBar,
      ),
    );
  }

  @override
  Widget builder(BuildContext context, SaleDetailState state) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: AppBarSaleWidget(
          onPressIcon: () {
            navigator.pop();
          },
          titleText: 'vouchers'.tr,
        ),
      ),
      body: buildBody(size, state),
    );
  }

  Widget buildBody(Size size, SaleDetailState state) {
    return Column(
      children: [
        NavigationBar(
          size: size,
          listTitle: listTitleNavigationBar,
          listFunction: listFunctionNavigationBar,
        ),
        Expanded(
          child: Stack(
            children: [
              SizedBox.expand(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildTitleSale(
                          participationTime: bloc.handleInformation(
                              state.voucher.restaurant != null
                                  ? state.voucher.restaurant.information ?? ' '
                                  : ' '),
                          titleSale: state.voucher.name ?? ' '),

                      //img
                      Stack(
                        children: [
                          Hero(
                            tag: heroTag,
                            child: buildCachedNetworkImageSaleWidget(
                                isBorderRadius: false,
                                imgUrl: (state.voucher.media != null &&
                                        state.voucher.media.isNotEmpty)
                                    ? state.voucher.media.first.thumb ?? ' '
                                    : ' ',
                                width: size.width,
                                height: size.height * 0.4),
                          ),
                          BoxDicountWidget(
                            discount: state?.voucher?.discountPrice,
                            iconDiscount: Icons.arrow_downward,
                            sizeIcon: 22,
                            horizontalPadding: 4.0,
                            verticalPadding: 4.0,
                            positionedTop: 0,
                            positionedRight: 0,
                          ),
                        ],
                      ),

                      buildInformationSale(
                          attention:
                              Helper.skipHtml(state.voucher.ingredients ?? ' '),
                          information: Helper.skipHtml(
                              state.voucher.description ?? ' ')),

                      DiscountInformationWidget(
                        discount: state?.voucher?.discountPrice,
                        maxDiscount: state?.voucher?.maxApply,
                        paddingHorizontal: 10.0,
                        textStyle: body1,
                      ),

                      ContactHelpWidget(
                          phone: '+02963.234.543',
                          onTapPhone: () {
                            print('on tap phone sale');
                          }),

                      PolicyTermsWidget(onTapPolicy: () {
                        print('tap policy');
                      }, onTapTermsOfUse: () {
                        print('tap terms of use');
                      }),

                      SizedBox(height: size.height * 0.16)
                    ],
                  ),
                ),
              ),

              //button
              ButtonJoinNow(
                size: size,
                onPress: () {
                  navigator
                      .pushNamed(RouteGenerator.storeVoucherScreen, arguments: {
                    'idVoucher': state.voucher.id,
                    'isExistStoreScreen': false,
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  ListView buildListViewRule({int length, titleRule, rule}) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 15.0,
        );
      },
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${index + 1}$titleRule',
                style: title.copyWith(color: colorTitle)),
            SizedBox(height: 4.0),
            Text(
              rule,
              style: body1,
              textAlign: TextAlign.justify,
            )
          ],
        );
      },
      itemCount: length,
    );
  }

  Widget buildInformationSale({String information, attention}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Icon(
              Icons.info,
              color: colorTitle,
            ),
            Container(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'information'.tr,
                style: title.copyWith(color: colorTitle),
              ),
            )
          ],
        ),
        SizedBox(height: 10.0),
        Text(
          information,
          style: body1,
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 10.0),
        Text(attention,
            style: body1.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.justify)
      ]),
    );
  }

  Widget buildTitleSale({String titleSale, participationTime}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titleSale, style: title.copyWith(color: colorTitle)),
          SizedBox(
            height: 5.0,
          ),
          Text(participationTime, style: body1)
        ],
      ),
    );
  }
}
