import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/transfer_select_user/cubit/transfer_select_user_cubit.dart';
import 'package:vipay/src/screens/transfer_select_user/shimmer/search_shimmer.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/app_bar_transfer_select_user_widget.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/list_from_contacts.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/list_result_search.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/text_field_search_content_widget.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';
import 'package:vipay/src/widgets/empty_account.dart';

class TransferSelectUserScreen
    extends CubitWidget<TransferSelectUserCubit, TransferSelectUserState> {
  static BlocProvider<TransferSelectUserCubit> provider() {
    return BlocProvider(
        create: (context) => TransferSelectUserCubit(),
        child: TransferSelectUserScreen());
  }

  final TextEditingController controller = TextEditingController();
  final ScrollController searchScrollController = ScrollController();

  @override
  void afterFirstLayout(BuildContext context) {
    searchScrollController.addListener(() {
      double maxScroll = searchScrollController.position.maxScrollExtent;
      double currentScroll = searchScrollController.position.pixels;
      if (maxScroll - currentScroll < 10.0) {
        bloc.hasReachedSearch();
      }
    });
    super.afterFirstLayout(context);
  }

  @override
  Widget builder(BuildContext context, TransferSelectUserState state) {
    final Size size = MediaQuery.of(context).size;
    return AppProgressHUB(
      inAsyncCall: state.isLoadingScaffold,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: AppBar().preferredSize,
          child: AppBarTransferSelectUserWidget(
            titleText: 'select_recipients'.tr,
            onPressIcon: () {
              navigator.pop();
            },
          ),
        ),
        body: buildBody(context, size, state),
      ),
    );
  }

  Widget buildBody(
      BuildContext context, Size size, TransferSelectUserState state) {
    if (state is TransferSelectUserCheckLogin) {
      if (!state.checkLogin) {
        return EmptyAccount();
      }
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          color: colorWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFieldSearchContent(size, controller),
              state.isLoading
                  ? TransferSelectUserShimmer()
                  : state.searchResponse == null
                      ? ListFromContact(
                          size: size,
                        )
                      : ListResultSearch(
                          size: size, scrollController: searchScrollController),
              SizedBox(
                height: 10.0,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  dynamic dispose() {
    controller.dispose();
    searchScrollController.dispose();
    return super.dispose();
  }
}
