import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/deposit/cubit/deposit_cubit.dart';
import 'package:vipay/src/screens/with_draw_screen/widgets/item_bank_widget.dart';

class ShowBankAccountWidget extends StatelessWidget {
  final Size size;

  const ShowBankAccountWidget({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubitWatch = context.watch<DepositCubit>();
    final state = cubitWatch.state;
    if (state.bankAccount.data.isEmpty) {
      return Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 0.0),
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Text(
          'you_have_not_linked_any_bank_yet'.tr,
          textAlign: TextAlign.center,
          style: body2.copyWith(color: colorGrey.withOpacity(0.9)),
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 0.0),
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(height: 10.0);
        },
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (context, index) {
          final item = state.bankAccount.data[index];
          return ItemBankWidget(
            item: item,
            colorBackground: state.selectIdBank == item.id
                ? colorBackgroundAppBar.withOpacity(0.2)
                : Colors.transparent,
            onPress: () =>
                context.read<DepositCubit>().onPressItemBank(item.id),
          );
        },
      ),
    );
  }
}
