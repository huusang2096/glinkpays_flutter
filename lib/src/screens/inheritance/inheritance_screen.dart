import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/inheritance/cubit/inheritance_cubit.dart';
import 'package:vipay/src/screens/inheritance/widgets/custom_dropdown_menu_widget.dart';
import 'package:vipay/src/screens/inheritance/widgets/signature_widget.dart';
import 'package:vipay/src/screens/inheritance/widgets/verify_status_model.dart';
import 'package:vipay/src/screens/inheritance/widgets/verify_tutorial.dart';
import 'package:vipay/src/screens/profile/widgets/custom_default_button.dart';

import 'widgets/document_widget.dart';

class InheritanceScreen
    extends CubitWidget<InheritanceCubit, InheritanceState> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: true);
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressNameController = TextEditingController();
  final _idController = TextEditingController();

  static BlocProvider<InheritanceCubit> provider() {
    return BlocProvider(
      create: (context) => InheritanceCubit(),
      child: InheritanceScreen(),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    context.read<InheritanceCubit>().loadData();
  }

  @override
  Widget builder(BuildContext context, InheritanceState state) {
    return Scaffold(
      appBar: AppBar(
        title: Text('inheritance_and_signature'.tr),
      ),
      body: _buildBody(context, state),
    );
  }

  Widget _buildBody(BuildContext context, InheritanceState state) {
    List<String> typeVerifications = ['passport', 'national_id'];

    if (state.data.user == null) {
      return SpinKitCircle(
        color: Colors.blue,
      );
    }

    final List<Widget> childrens = [
      Text(
        'inheritance_information'.tr,
        style: context.textTheme.headline6,
      ),
      _customTextFormField(
          controller: _firstNameController,
          lableText: '${'first_name'.tr}',
          enable: state.data.isLoadingSignature),
      _customTextFormField(
          controller: _lastNameController,
          lableText: 'last_name'.tr,
          enable: state.data.isLoadingSignature),
      _customTextFormField(
          controller: _phoneController,
          lableText: 'phone'.tr,
          textInputFormatter: FilteringTextInputFormatter.digitsOnly,
          textInputType: TextInputType.phone,
          enable: state.data.isLoadingSignature),
      _customTextFormField(
          controller: _addressNameController,
          lableText: 'address'.tr,
          enable: state.data.isLoadingSignature),
      _customTextFormField(
          controller: _idController,
          lableText: 'id_or_passport'.tr,
          enable: state.data.isLoadingSignature,
          isRequired: false),
      CustomDefaultButton(
        isLoading: state.data.isLoadingInheritance,
        text: 'update_infor'.tr,
        press: () => _submit(context),
      ),
      SizedBox(
        height: 30,
      ),
      Text(
        'signature'.tr,
        style: context.textTheme.headline6,
      ),
      _signatureContent(context, state),
      CustomDefaultButton(
        isLoading: state.data.isLoadingSignature,
        text: 'update_signature'.tr,
        press: () => _showSignatureWidget(context, state),
      ),
      SizedBox(
        height: 30,
      ),
      state.data.documentVerifyStatus == VerifyDocumentationStatus.APPROVED
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
                        bloc.selectVerification(0);
                      }
                      if (value == 'national_id'.tr) {
                        bloc.selectVerification(1);
                      }
                    },
                  ),
                ))),
              ],
            ),
      state.data.indexVerification == 0
          ? Container(
              width: 500,
              child: DocumentWidget(
                documentType: 'passport',
              ),
            )
          : Container(
              width: 500,
              child: DocumentWidget(
                documentType: 'national_id',
              ),
            ),
      SizedBox(
        height: 30,
      ),
    ];
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SmartRefresher(
            controller: _refreshController,
            onRefresh: () => context.read<InheritanceCubit>().loadData(),
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => childrens[index],
              separatorBuilder: (context, index) => SizedBox(
                height: 10.0,
              ),
              itemCount: childrens.length,
            ),
          ),
        ),
      ),
    );
  }

  /*TextFormField*/ _customTextFormField(
      {TextEditingController controller,
      String lableText,
      TextInputType textInputType,
      TextInputFormatter textInputFormatter,
      bool enable,
      bool isRequired = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: lableText.tr,
                style:
                    context.textTheme.subtitle1.apply(color: Colors.black87)),
            isRequired
                ? TextSpan(
                    text: ' (*)', style: body1.copyWith(color: Colors.red))
                : TextSpan(text: ''),
          ]),
        ),
        TextFormField(
            controller: controller,
            enabled: !enable,
            inputFormatters: textInputFormatter != null
                ? <TextInputFormatter>[textInputFormatter]
                : null,
            keyboardType: textInputType,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              errorBorder: _outlineInputBorder(color: Colors.red),
              focusedBorder:
                  _outlineInputBorder(color: Colors.grey, width: 1.6),
            ))
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

  OutlineInputBorder _outlineInputBorder(
      {MaterialColor color, double width = 1.0}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color: color, width: width),
    );
  }

  void _submit(BuildContext context) {
    FocusScope.of(context).unfocus();
    context.read<InheritanceCubit>().updateInheritanceInfor(
        firstName: _firstNameController.text,
        lastName: _lastNameController.text,
        address: _addressNameController.text,
        phone: _phoneController.text,
        identity: _idController.text);
  }

  @override
  void listener(BuildContext context, InheritanceState state) {
    state.when(
        initial: (data) {},
        loading: (data) {},
        loaded: (data) {
          _firstNameController.text = data.user?.inherited?.firstName ?? '';
          _lastNameController.text = data.user?.inherited?.lastName ?? '';
          _phoneController.text = data.user?.inherited?.phone ?? '';
          _addressNameController.text = data.user?.inherited?.address ?? '';
          _idController.text = data.user?.inherited?.identity ?? '';
          _refreshController.refreshCompleted();
        },
        selectVerification: (data) {},
        addImage: (data) {});
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
      context.read<InheritanceCubit>().updateSignature(
          file, context.read<InheritanceCubit>().state.data.user.phone);
    }
  }

  Future<File> writeToFile(Uint8List bytes) async {
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    var filePath = tempPath + '/temp_signature.png';
    return File(filePath).writeAsBytes(bytes);
  }
}
