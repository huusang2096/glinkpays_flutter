import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/models/AvailableResponse.dart';
import 'package:vipay/src/screens/home/cubit/home_cubit.dart';

class UserCardWidget extends StatelessWidget {
  final formatter = NumberFormat('###,###.#', 'en');

  @override
  Widget build(BuildContext context) {
    return _buildFunctions(context);
  }

  Widget _buildFunctions(BuildContext context) {
    final state = context.watch<HomeCubit>().state;
    return Container(
        height: 80,
        padding: EdgeInsets.symmetric(vertical: 10),
        color: Color(0xFF2DBBBF),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            state.availableResponse != null
                ? Container(
                    width: 125, //--------->old:120
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/Wallets').then(
                            (value) =>
                                context.bloc<HomeCubit>().getUserAvailable());
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFFAEDE48), Color(0xFF11BF91)]),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white.withOpacity(0.1),
                                offset: Offset(0, 4),
                                blurRadius: 5,
                                spreadRadius: 1)
                          ],
                        ),
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          primary: false,
                          itemCount: state.availableResponse != null
                              ? state.availableResponse.data.wallets.length
                              : 0,
                          separatorBuilder: (context, index) {
                            return Container(
                                height: 1,
                                color: Color(0xFF219653).withOpacity(0.25));
                          },
                          itemBuilder: (context, index) {
                            Wallet wallet = state.availableResponse.data.wallets
                                .elementAt(index);
                            return Padding(
                              padding: const EdgeInsets.all(2),
                              child: SingleChildScrollView(
                                child: Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                              wallet.currCode == 'USD'
                                                  ? 'assets/images/usd.svg'
                                                  : 'assets/images/gas.svg'),
                                          SizedBox(width: 5),
                                          Text(
                                            formatter.format(
                                                double.parse(wallet.balance)),
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        wallet.currCode,
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF219653),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ))
                : SizedBox.shrink(),
            GestureDetector(
              onTap: () {
                navigator.pushNamed(RouteGenerator.depositScreen).then(
                    (value) => context.read<HomeCubit>().getUserAvailable());
              },
              child: Container(
                width: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset('assets/images/deposit.svg',
                        width: 25, height: 25),
                    SizedBox(height: 5),
                    Text(
                      allTranslations.text('deposit'),
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                navigator.pushNamed(RouteGenerator.withDrawScreen).then(
                    (value) => context.read<HomeCubit>().getUserAvailable());
              },
              child: Container(
                width: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset('assets/images/payout.svg',
                        width: 25, height: 25),
                    SizedBox(height: 5),
                    Text(
                      allTranslations.text('payout'),
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => navigator
                  .pushNamed(RouteGenerator.scanQrCodeScreen, arguments: {
                'isPopAndReturnData': false
              }).then((value) => context.read<HomeCubit>().getUserAvailable()),
              child: Container(
                width: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/qr_code.svg',
                      width: 25,
                      height: 25,
                      color: Colors.white,
                    ),
                    SizedBox(height: 5),
                    Text(
                      allTranslations.text('scan'),
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                navigator
                    .pushNamed(RouteGenerator.transferSelectUserScreen)
                    .then((value) =>
                        context.read<HomeCubit>().getUserAvailable());
              },
              child: Container(
                width: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset('assets/images/exchange.svg',
                        width: 25, height: 25),
                    SizedBox(height: 5),
                    Text(
                      'exchange'.tr,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
