import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/with_draw_screen/cubit/withdraw_cubit.dart';
import 'package:vipay/src/screens/with_draw_screen/widgets/item_bank_widget.dart';

class AffiliateBankWidget extends StatelessWidget {
  final Size size;

  const AffiliateBankWidget({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: buildListView(context));
  }

  Widget buildListView(BuildContext context) {
    final cubitWatch = context.watch<WithdrawCubit>();
    final state = cubitWatch.state;

    if (state.listBankAccount.isEmpty) {
      return Container(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 2.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'you_have_not_linked_any_bank_yet'.tr,
                style: body2.copyWith(color: colorGrey.withOpacity(0.9)),
              ),
            ),
            buildAddBank(context)
          ],
        ),
      );
    }

    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(height: 8.0);
      },
      // physics: NeverScrollableScrollPhysics(),
      // shrinkWrap: true,
      itemCount: state.listBankAccount.length + 1,
      itemBuilder: (context, index) {
        if (index <= state.listBankAccount.length - 1) {
          final item = state.listBankAccount[index];
          return ItemBankWidget(
            colorBackground: state.selectIdBank == item.id
                ? colorBackgroundAppBar.withOpacity(0.2)
                : Colors.transparent,
            onLongPress: (id) => navigator
                .pushNamed(RouteGenerator.editBankWithDraw, arguments: {
              'bankAccount': state.listBankAccount
                  .firstWhere((element) => id == element.id)
            }).then((value) => context.read<WithdrawCubit>().getAvailable()),
            onPress: () =>
                context.read<WithdrawCubit>().onPressItemBank(item.id),
            item: item,
          );
        }
        return buildAddBank(context);
      },
    );
  }

  InkWell buildAddBank(BuildContext context) {
    return InkWell(
      onTap: () => context.read<WithdrawCubit>().addBank(),
      child: Container(
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            DottedBorder(
                padding: EdgeInsets.all(5.0),
                dashPattern: [2, 3, 2, 3],
                child: Icon(Icons.add)),
            SizedBox(
              width: 5.0,
            ),
            Text('add_card_account'.tr)
          ],
        ),
      ),
    );
  }
}
