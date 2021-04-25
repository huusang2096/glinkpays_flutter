import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/models/register/type_user.dart';
import 'package:vipay/src/screens/register/cubit/register_cubit.dart';

class SelectTypeUserDropDown extends CubitWidget<RegisterCubit, RegisterState> {
  SelectTypeUserDropDown({
    this.size,
    this.padding,
  });

  final Size size;
  final double padding;

  final List<TypeUser> listTypeUsers = [
    TypeUser(value: 1, name: 'user'),
    TypeUser(value: 2, name: 'merchant'),
  ];

  @override
  Widget builder(BuildContext context, state) {
    return Container(
      margin: EdgeInsets.only(top: 0.0, bottom: padding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: 'user_type'.tr,
                  style: body1.copyWith(color: Colors.grey)),
              TextSpan(
                  text: '*', style: body1.copyWith(color: Colors.redAccent))
            ]),
          ),
          Container(
            width: size.width,
            padding: EdgeInsets.only(left: padding / 4),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: DropdownButtonHideUnderline(
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                  ),
                  hint: Text('select_user_type'.tr),
                  items: listTypeUsers.map((e) {
                    return DropdownMenuItem(
                      child: Text(e.name.tr),
                      value: e.value,
                    );
                  }).toList(),
                  validator: (value) =>
                      value == null ? 'please_select_type_user'.tr : null,
                  onChanged: (value) {
                    bloc.changeTypeUser(listTypeUsers[listTypeUsers
                        .indexWhere((element) => element.value == value)]);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
