import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/deposit/cubit/deposit_cubit.dart';

class CardWidget extends StatelessWidget {
  final Size size;

  const CardWidget({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final watch = context.watch<DepositCubit>();
    final state = watch.state;
    return InkWell(
      onTap: () => context.read<DepositCubit>().createCard(),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
        decoration: BoxDecoration(
          color: state.selectCard != -1
              ? colorBackgroundAppBar.withOpacity(0.2)
              : Colors.transparent,
          border: Border(
            bottom: BorderSide(width: 0.5, color: colorGrey),
            top: BorderSide(width: 0.5, color: colorGrey),
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.payment_outlined,
            ),
            SizedBox(width: 5.0),
            state.stripePaymentStoreRequest == null
                ? Text('credit_debit_card'.tr,
                    style: body1.copyWith(color: colorGrey))
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Number: **** **** **** ${state.stripePaymentStoreRequest.number.substring(14) ?? ' '}'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                              'Date: ${state.stripePaymentStoreRequest.expMonth}/${state.stripePaymentStoreRequest.expYear.substring(2)}'),
                          SizedBox(width: 10.0),
                          Text('Cvc: ***'),
                        ],
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
