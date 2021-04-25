import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/inheritance/cubit/inheritance_cubit.dart';
import 'package:vipay/src/screens/inheritance/widgets/custom_dropdown_menu_widget.dart';
import 'package:vipay/src/screens/inheritance/widgets/document_widget.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/screens/verification/widget/verify_widget_common.dart';
import 'package:vipay/src/screens/inheritance/widgets/verify_status_model.dart';

class VerifyKycWiget extends StatelessWidget {
  final List<String> typeVerifications = ['passport', 'national_id'];
  @override
  Widget build(BuildContext context) {
    final stateInheritance = context.watch<InheritanceCubit>().state;
    return Column(
      children: _handleCaseWidget(stateInheritance, context),
    );
  }

  bool _handleStatusVerifyIdentify(InheritanceState state) {
    if (state.data.user.identityVerificationWarring) {
      return true;
    } else {
      if (state.data.user.documentVerification.first.status ==
          VerifyDocumentationStatus.APPROVED) {
        return false;
      }
      return true;
    }
  }

  String _handleDocumentVirifyStatus(InheritanceState state) {
    if (state.data.user.documentVerification.isBlank) {
      return '';
    } else {
      return state.data.user.documentVerification.first.status.tr;
    }
  }

  List<Widget> _handleCaseWidget(InheritanceState state, BuildContext context) {
    List<Widget> _listWidget = [];
    _listWidget.add(
      buildRowIdentify(
          leftText:
              'verify_identity'.tr + ' (${_handleDocumentVirifyStatus(state)})',
          onPressVerify: () {},
          enable: _handleStatusVerifyIdentify(state),
          showPrefix:
              !state.data.user.identityVerificationWarring ? true : false,
          paddingBottom: 0.0),
    );
    if (state.data.user?.phone == null || state.data.user.phone.isEmpty) {
      _listWidget.add(Container(
          margin: EdgeInsets.only(top: 10.0),
          //  padding: EdgeInsets.symmetric(horizontal: 2.0),
          child: Text(
            'please_verify_your_phone_number_before_verifying_your_identity'.tr,
            style: body2.copyWith(color: colorGrey),
            textAlign: TextAlign.center,
          )));
      return _listWidget;
    }

    if (state.data.documentVerifyStatus == VerifyDocumentationStatus.APPROVED &&
        !state.data.user.identityVerificationWarring) {
      _listWidget.add(SizedBox.shrink());
      return _listWidget;
    } else {
      _listWidget.add(Row(
        children: [
          Expanded(
            child: Text(
              'select_type_verification'.tr + ': ',
              style: body2,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
              child: Align(
                  alignment: Alignment.centerRight,
                  child: CustomDropdownButtonHideUnderline(
                    child: CustomDropdownButton<String>(
                      style: body1.copyWith(color: Colors.red),
                      value: typeVerifications[state.data.indexVerification].tr,
                      items: <String>['passport'.tr, 'national_id'.tr]
                          .map((String value) {
                        return CustomDropdownMenuItem<String>(
                          value: value.tr,
                          child: Text(
                            value.tr,
                            style: body1.copyWith(color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        if (value == 'passport'.tr) {
                          context
                              .read<InheritanceCubit>()
                              .selectVerification(0);
                        }
                        if (value == 'national_id'.tr) {
                          context
                              .read<InheritanceCubit>()
                              .selectVerification(1);
                        }
                      },
                    ),
                  )))
        ],
      ));
      if (state.data.indexVerification == 0) {
        _listWidget.add(DocumentWidget(
          documentType: 'passport',
          onPressButton: () {
            context.read<InheritanceCubit>().verifyKyc('passport');
          },
        ));
      } else {
        _listWidget.add(DocumentWidget(
            documentType: 'national_id',
            onPressButton: () {
              context.read<InheritanceCubit>().verifyKyc('national_id');
            }));
      }
      return _listWidget;
    }
  }

  Widget buildRowIdentify(
      {String leftText,
      Function onPressVerify,
      bool enable,
      double paddingBottom,
      bool showPrefix}) {
    return Padding(
      padding: EdgeInsets.only(bottom: paddingBottom),
      child: Row(
        children: [
          Icon(
            Icons.verified_user,
            color: !enable ? Colors.green : Colors.black87,
          ),
          SizedBox(width: 4.0),
          Expanded(
              child: Text(leftText,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: body1.copyWith(
                      color: !enable ? colorGrey : Colors.black87))),
          SizedBox(width: 10.0),
          if (showPrefix)
            !enable
                ? Text('finish'.tr,
                    style: body2.copyWith(
                        fontStyle: FontStyle.italic, color: colorGrey))
                : Text('unfinish'.tr),
        ],
      ),
    );
  }
}
