import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/store/search/widget/store_search.dart';
import 'package:vipay/src/shimmer/store_simmer.dart';

import 'bloc/search_cubit.dart';
import 'bloc/search_state.dart';

class SearchStoreWidget extends CubitWidget<SearchCubit, SearchState> {
  TextEditingController _searchController = TextEditingController();

  static provider() {
    return BlocProvider(
        create: (context) => SearchCubit(), child: SearchStoreWidget());
  }

  @override
  void afterFirstLayout(BuildContext context) {
    super.afterFirstLayout(context);
  }

  @override
  dispose() {
    _searchController.clear();
    return super.dispose();
  }

  @override
  Widget builder(BuildContext context, SearchState state) {
    final _debouncer = Debouncer(milliseconds: 500);
    final List<int> listDistance = [1, 5, 10, 15, 20, 25, 30];

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
          return StoreSearchWidget();
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
            child: StoreSearchWidget(),
          );
          break;
      }
    }

    return Scaffold(
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
          child: TextField(
            controller: _searchController,
            style: headingWhite18.copyWith(fontSize: 16),
            autofocus: true,
            decoration: InputDecoration(
                suffixIcon: _searchController.text.isBlank
                    ? null
                    : InkWell(
                        child: Icon(Icons.close),
                        onTap: () {
                          _searchController.text = '';
                          bloc.clear();
                        },
                      ),
                prefixIcon: Container(
                  padding: EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    'assets/images/search.svg',
                  ),
                ),
                hintText: 'looking_for_store'.tr,
                hintStyle: headingWhite18.copyWith(fontSize: 16),
                border: UnderlineInputBorder(borderSide: BorderSide.none),
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
                focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none)),
            onChanged: (query) {
              _debouncer.run(() {
                if (query.isNotEmpty) {
                  bloc.getListSearch(query, radius: state.data.distance);
                } else {
                  bloc.clear();
                }
              });
            },
            textInputAction: TextInputAction.search,
          ),
        ),
        actions: [
          Container(
            child: Row(
              children: [
                PopupMenuButton(
                  offset: Offset(0, 50),
                  icon: Icon(
                    Icons.my_location,
                  ),
                  tooltip: 'search_by_km'.tr,
                  onSelected: (value) {
                    context.read<SearchCubit>().selectDistance(value);
                  },
                  itemBuilder: (context) {
                    return listDistance.map((int distance) {
                      return PopupMenuItem(
                        value: distance,
                        child: ListTile(
                          trailing: state.data.distance == distance
                              ? Icon(Icons.check)
                              : null,
                          title: Text(
                            'around'.tr + ' ${distance.toString()} Km',
                            style: body1.copyWith(fontSize: 14),
                          ),
                        ),
                      );
                    }).toList();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Text('${state.data.distance.toString()}Km'),
                )
              ],
            ),
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
