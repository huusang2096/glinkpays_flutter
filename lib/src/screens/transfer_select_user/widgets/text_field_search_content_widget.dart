import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/transfer_select_user/cubit/transfer_select_user_cubit.dart';

class TextFieldSearchContent extends StatelessWidget {
  final Size size;
  final TextEditingController controller;
  final debounce = Debouncer(milliseconds: 600);

  TextFieldSearchContent(this.size, this.controller);

  @override
  Widget build(BuildContext context) {
    final cubit = context.bloc<TransferSelectUserCubit>();
    final state = cubit.state;
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          padding: EdgeInsets.only(right: 45.0),
          margin:
              EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0, bottom: 15.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: colorGrey.withOpacity(0.2),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          width: size.width,
          child: TextField(
            onTap: () {
              cubit.checkLogin();
            },
            controller: controller,
            minLines: 1,
            maxLines: 1,
            onChanged: (query) {
              if (state.checkLogin) {
                debounce.run(() {
                  print('Query: ' + query);
                  cubit.searchUserInit(query);
                });
              }
            },
            autofocus: false,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              hintStyle: TextStyle(color: colorGrey.withOpacity(0.6)),
              prefixIcon: Container(
                padding: EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  'assets/images/search.svg',
                  color: colorGrey.withOpacity(0.6),
                ),
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: 'enter_a_name_or_phone_number'.tr,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            cubit.handleSuffixIcon(controller);
          },
          child: Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.only(right: 25.0),
            child: state.changeSuffixIcon
                ? Icon(Icons.clear, color: colorGrey.withOpacity(0.6))
                : SvgPicture.asset(
                    'assets/svg/qr_code.svg',
                    color: colorGrey.withOpacity(0.6),
                  ),
          ),
        )
      ],
    );
  }
}
