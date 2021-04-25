import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/search_category/cubit/search_voucher_category_cubit.dart';
import 'package:vipay/src/screens/search_category/widgets/filter_voucher_category.dart';
import 'package:vipay/src/screens/search_category/widgets/voucher_search_category_widget.dart';
import 'package:vipay/src/shimmer/store_simmer.dart';

class SearchVoucherCategoryScreen extends CubitWidget<
    SearchVoucherCategoryCubit, SearchVoucherCategoryState> {
  final TextEditingController _searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final String categoryKeyID;

  SearchVoucherCategoryScreen({this.categoryKeyID});

  static provider({String categoryKeyID}) {
    return BlocProvider(
        create: (_) => SearchVoucherCategoryCubit(),
        child: SearchVoucherCategoryScreen(
          categoryKeyID: categoryKeyID,
        ));
  }

  @override
  void afterFirstLayout(BuildContext context) {
    super.afterFirstLayout(context);
    bloc.getCategories(categoryKeyID);
    bloc.getVouchers();
  }

  @override
  void listener(BuildContext context, SearchVoucherCategoryState state) {
    super.listener(context, state);
    if (state is ListVoucherTyeData) {
      bloc.getListSearchCategory('', categoryKeyID);
    }
  }

  @override
  Widget builder(BuildContext context, SearchVoucherCategoryState state) {
    final _size = MediaQuery.of(context).size;
    final _debouncer = Debouncer(milliseconds: 500);

    Widget _buildTipSearch(String text) {
      return Container(
        width: _size.width,
        height: _size.height,
        child: Center(child: Text(text)),
      );
    }

    Widget _buildListResult() {
      switch (state.data.search) {
        case 'NORMAL':
          return _buildTipSearch('enter_search_keywords'.tr);
          break;
        case 'OK':
          return VoucherSearchCategoryWidget();
          break;
        case 'SEARCH':
          return ListView(
            children: [StoreShimmer()],
          );
          break;
        case 'INVALID_REQUEST':
          return _buildTipSearch('no_search_results_found'.tr);
          break;
        case 'ZERO_RESULTS':
          return _buildTipSearch('no_search_results_found'.tr);
          break;
        case 'OVER_QUERY_LIMIT':
          return _buildTipSearch('server_error_please_try_again'.tr);
        case 'REQUEST_DENIED':
          return _buildTipSearch('an_error_occurred_while_searching'.tr);
        case 'UNKNOWN_ERROR':
          return _buildTipSearch('server_error_please_try_again'.tr);
        default:
          return VoucherSearchCategoryWidget();
          break;
      }
    }

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: FilterVoucherCategory(categoryKeyID: categoryKeyID),
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
      body: SafeArea(
        child: _buildListResult(),
      ),
    );
  }
}
