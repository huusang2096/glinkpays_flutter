import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/screens/voucher/widget/voucher_item.dart';
import 'package:vipay/src/screens/voucher_list/cubit/voucher_list_cubit.dart';

class VoucherListScreen
    extends CubitWidget<VoucherListCubit, VoucherListState> {
  static BlocProvider<VoucherListCubit> provider(dynamic agrs) => BlocProvider(
      create: (context) => VoucherListCubit(agrs), child: VoucherListScreen());

  final _refreshController = RefreshController(initialRefresh: true);

  @override
  void afterFirstLayout(BuildContext context) {
    context.read<VoucherListCubit>().getVouchers();
  }

  @override
  Widget builder(BuildContext context, VoucherListState state) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('voucher_list'.tr),
      ),
      body: _buildBody(context, state),
    );
  }

  Widget _buildBody(BuildContext context, VoucherListState state) {
    final vouchers = state.data.vouchers ?? [];
    return SmartRefresher(
      controller: _refreshController,
      onRefresh: () => context.read<VoucherListCubit>().getVouchers(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return VoucherItem(
              voucher: vouchers[index],
              index: index,
            );
          },
          itemCount: vouchers.length,
          separatorBuilder: (BuildContext context, int index) => Divider(),
        ),
      ),
    );
  }

  @override
  void listener(BuildContext context, VoucherListState state) {
    super.listener(context, state);
    state.when(
        initial: (_) => _refreshController.requestLoading(),
        loading: (data) => _refreshController.requestLoading(),
        loaded: (data) => _refreshController.refreshCompleted());
  }
}
