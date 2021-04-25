import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/history/cubit/history_cubit.dart';
import 'package:vipay/src/screens/history/widgets/history_card_item.dart';
import 'package:vipay/src/screens/history/widgets/history_select_type_filtter_drop_down.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';
import 'package:vipay/src/widgets/empty_account.dart';

class HistoryScreen extends CubitWidget<HistoryCubit, HistoryState> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  static provider() {
    return BlocProvider<HistoryCubit>(
      create: (_) => HistoryCubit(),
      child: HistoryScreen(),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.getHistory();
  }

  @override
  void listener(BuildContext context, HistoryState state) {
    super.listener(context, state);
    if (state is ListHistoryData) {
      bloc.getTransactionType(state.data.historyResponse);
    }
    if (_refreshController.isRefresh) {
      _refreshController.refreshCompleted();
    }
  }

  @override
  Widget builder(BuildContext context, HistoryState state) {
    Size _size = MediaQuery.of(context).size;
    final data = state.data;
    return AppProgressHUB(
      inAsyncCall: state.data.isLoading,
      child: Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
            child: bloc.checkLogin()
                ? data.historyResponse == null
                    ? SizedBox.shrink()
                    : Container(
                        height: _size.height,
                        width: _size.width,
                        color: whiteColor,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              SelectTypeFilterDropDown(
                                size: _size,
                                listTransactionType:
                                    state.data?.listTransactionType ?? [],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Expanded(
                                child: SmartRefresher(
                                  controller: _refreshController,
                                  onRefresh: () => bloc.getHistory(),
                                  child: ListView.separated(
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                      height: 10,
                                    ),
                                    itemBuilder: (context, index) {
                                      return HistoryCartItemWidget(
                                          data.listHistory[index] ?? '');
                                    },
                                    itemCount: data.listHistory.length,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                : EmptyAccount()),
      ),
    );
  }
}
