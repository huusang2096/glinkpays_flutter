import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/voucher/widget/filter_voucher.dart';
import 'package:vipay/src/screens/voucher/widget/voucher_search.dart';
import 'cubit/search_voucher_state.dart';
import 'package:vipay/src/shimmer/store_simmer.dart';

import 'cubit/search_voucher_cubit.dart';

class SearchVoucherWidget
    extends CubitWidget<SearchVoucherCubit, SearchVoucherState> {
  TextEditingController _searchController = TextEditingController();
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  static provider() {
    return BlocProvider(
        create: (context) => SearchVoucherCubit(),
        child: SearchVoucherWidget());
  }

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.getCategories();
    bloc.getAllVoucher();
    bloc.getVouchers();
    super.afterFirstLayout(context);
  }

  @override
  dispose() {
    bloc.clear();
    _searchController.clear();
    return super.dispose();
  }

  @override
  Widget builder(BuildContext context, SearchVoucherState state) {
    final _debouncer = Debouncer(milliseconds: 500);

    buildTipSearch(String text) {
      return Container(
        height: 500,
        child: Center(child: Text(text)),
      );
    }

    buildListResult() {
      switch (state.data.search) {
        case "NORMAL":
          return buildTipSearch('enter_search_keywords'.tr);
          break;
        case "OK":
          return VoucherSearchWidget();
          break;
        case "SEARCH":
          return StoreShimmer();
          break;
        case "INVALID_REQUEST":
          return buildTipSearch('no_search_results_found'.tr);
          break;
        case "ZERO_RESULTS":
          return buildTipSearch('no_search_results_found'.tr);
          break;
        case "OVER_QUERY_LIMIT":
          return buildTipSearch('server_error_please_try_again'.tr);
        case "REQUEST_DENIED":
          return buildTipSearch('an_error_occurred_while_searching'.tr);
        case "UNKNOWN_ERROR":
          return buildTipSearch('server_error_please_try_again'.tr);
        default:
          return Expanded(
            child: VoucherSearchWidget(),
          );
          break;
      }
    }

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: FilterVoucher(),
      appBar: AppBar(
        backgroundColor: appBarColor,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        elevation: 0,
        title: Container(
          height: 40.0,
          decoration: BoxDecoration(
            color: Color(0xFFE5E5E5).withOpacity(0.6),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          padding: EdgeInsets.only(right: 1.0),
          child: TextField(
            style: headingWhite18.copyWith(fontSize: 16),
            controller: _searchController,
            decoration: InputDecoration(
                prefixIcon: Container(
                  padding: EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    'assets/images/search.svg',
                  ),
                ),
                hintText: 'looking_for_voucher'.tr,
                hintStyle: headingWhite18.copyWith(fontSize: 16),
                border: UnderlineInputBorder(borderSide: BorderSide.none),
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
                focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none)),
            onChanged: (query) {
              _debouncer.run(() {
                if (query.isNotEmpty) {
                  bloc.getListSearch(query);
                } else {
                  bloc.clear();
                }
              });
            },
            autofocus: false,
            textInputAction: TextInputAction.search,
          ),
        ),
        actions: <Widget>[
          IconButton(
            iconSize: 30.0,
            icon: SvgPicture.asset(
              'assets/images/filter.svg',
              width: 25,
              height: 30,
              color: Colors.white,
            ),
            onPressed: () {
              _scaffoldKey.currentState.openEndDrawer();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildListResult(),
          ],
        ),
      ),
    );
  }
}
