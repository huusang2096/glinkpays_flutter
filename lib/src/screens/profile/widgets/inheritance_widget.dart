import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:vipay/src/common/config.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/screens/inheritance/cubit/inheritance_cubit.dart';
import 'package:vipay/src/screens/inheritance/widgets/custom_dropdown_menu_widget.dart';
import 'package:vipay/src/screens/inheritance/widgets/document_widget.dart';
import 'package:vipay/src/screens/inheritance/widgets/signature_widget.dart';
import 'package:vipay/src/screens/inheritance/widgets/verify_status_model.dart';
import 'package:vipay/src/screens/profile/widgets/custom_default_button.dart';

import 'inheritance_widget_shimmer.dart';

class InheritanceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final inheritanceCubit = context.watch<InheritanceCubit>();
    List<String> typeVerifications = ['passport', 'national_id'];
    return inheritanceCubit.state.data.isLoadingShimmer
        ? InheritanceWidgetShimmer()
        : Column(
            children: [
              Text(
                'signature'.tr,
                style: context.textTheme.headline6,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: _signatureContent(context, inheritanceCubit.state),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: CustomDefaultButton(
                  isLoading: inheritanceCubit.state.data.isLoadingSignature,
                  text: 'update_signature'.tr,
                  press: () =>
                      _showSignatureWidget(context, inheritanceCubit.state),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: inheritanceCubit.state.data.documentVerifyStatus ==
                        VerifyDocumentationStatus.APPROVED
                    ? SizedBox.shrink()
                    : Row(
                        children: [
                          Expanded(
                            child: Text(
                              'select_type_verification'.tr + ': ',
                              style: body1,
                            ),
                          ),
                          Expanded(
                              child: Center(
                                  child: CustomDropdownButtonHideUnderline(
                            child: CustomDropdownButton<String>(
                              style: body1.copyWith(color: Colors.red),
                              value: typeVerifications[inheritanceCubit
                                      .state.data.indexVerification]
                                  .tr,
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
                                  inheritanceCubit.selectVerification(0);
                                }
                                if (value == 'national_id'.tr) {
                                  inheritanceCubit.selectVerification(1);
                                }
                              },
                            ),
                          )))
                        ],
                      ),
              ),
              Container(
                child: inheritanceCubit.state.data.indexVerification == 0
                    ? DocumentWidget(
                        documentType: 'passport',
                      )
                    : DocumentWidget(
                        documentType: 'national_id',
                      ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          );
  }

  AspectRatio _signatureContent(BuildContext context, InheritanceState state) {
    final imageUrl = state.data.user?.electronicSignature ?? '';
    return AspectRatio(
      aspectRatio: Get.width / 150,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(6.0)),
        height: 150,
        child: imageUrl.isEmpty
            ? Center(
                child: Text(
                  'dont_have_signature'.tr,
                  style:
                      context.textTheme.subtitle1.apply(color: Colors.black54),
                ),
              )
            : CachedNetworkImage(
                imageUrl: imageUrl,
              ),
      ),
    );
  }

  void _showSignatureWidget(
      BuildContext context, InheritanceState state) async {
    final mapData = await Get.bottomSheet(
      SignatureWidget(
        phoneAccount: context.read<InheritanceCubit>().state.data.user.phone,
      ),
    );
    if (mapData != null) {
      final file = await writeToFile(mapData['bytes']);
      context
          .read<InheritanceCubit>()
          .updateSignature(file, state.data.user.phone);
    }
  }

  Future<File> writeToFile(Uint8List bytes) async {
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    var filePath = tempPath + '/temp_signature.png';
    return File(filePath).writeAsBytes(bytes);
  }
}
