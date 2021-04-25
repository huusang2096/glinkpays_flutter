import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/chatbox/widgets/item_contact_widget.dart';
import 'package:vipay/src/screens/chatbox/widgets/separator_widget.dart';
import 'package:vipay/src/screens/transfer_select_user/cubit/transfer_select_user_cubit.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/title_widget.dart';

class ListResultSearch extends StatelessWidget {
  final Size size;
  final ScrollController scrollController;

  ListResultSearch({this.size, this.scrollController});

  @override
  Widget build(BuildContext context) {
    final cubit = context.bloc<TransferSelectUserCubit>();
    final state = cubit.state;
    return buildBody(state);
  }

  Widget buildBody(TransferSelectUserState state) {
    if (state.searchResponse.data.isEmpty) {
      return buildNullResultSearch();
    }
    return buildListResultSearch(state);
  }

  Widget buildNullResultSearch() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(titleKey: 'search_results'),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            margin: EdgeInsets.only(top: 15.0),
            child: Center(
              child: Text(
                'cant_find_this_user_please_try_another_keyword'.tr,
                textAlign: TextAlign.center,
                style: body1.copyWith(color: colorGrey.withOpacity(0.65)),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildListResultSearch(TransferSelectUserState state) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(titleKey: 'search_results'),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 15.0),
              child: ListView.separated(
                controller: scrollController,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  if (index >= state.searchResponse.data.length) {
                    if (state is TransferLoadMoreError) {
                      return Container(
                        height: 40.0,
                        child: Center(
                          child: Text(
                            'no_matching_results_were_found'.tr,
                            style: body1.copyWith(
                              color: colorGrey.withOpacity(0.8),
                            ),
                          ),
                        ),
                      );
                    }
                    return SizedBox(
                      height: 50.0,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  final data = state.searchResponse.data[index];
                  return ItemContactWidget(
                    imgUrl: data?.image != null && data.image.isNotEmpty
                        ? data.image
                        : null,
                    onPress: () {
                      navigator.pushNamed(RouteGenerator.transferScreen,
                          arguments: {'user': data});
                    },
                    size: size,
                    showStatus: false,
                    pathSvg: 'assets/svg/avatar_icon.svg',
                    subTitle: data.phone ?? data.email ?? '',
                    title: data?.name ?? '',
                  );
                },
                separatorBuilder: (context, index) {
                  return SeparatorWidget();
                },
                itemCount: state.hasReachedSearch
                    ? state.searchResponse.data.length + 1
                    : state.searchResponse.data.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
