import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/inheritance/cubit/inheritance_cubit.dart';
import 'package:vipay/src/screens/inheritance/widgets/image_review_widget.dart';
import 'package:vipay/src/screens/inheritance/widgets/verify_status_model.dart';
import 'package:vipay/src/screens/profile/widgets/custom_default_button.dart';
import 'package:vipay/src/screens/inheritance/widgets/verify_tutorial.dart';
import 'package:simplest/simplest.dart';

class DocumentWidget extends StatefulWidget {
  final double height;
  final String documentType;
  final Function onPressButton;

  DocumentWidget(
      {Key key,
      @required this.documentType,
      this.height = 160,
      this.onPressButton})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _DocumentWidgetState();
}

class _DocumentWidgetState extends State<DocumentWidget> {
  @override
  Widget build(BuildContext context) {
    final data = context.watch<InheritanceCubit>().state.data;

    return data.documentVerifyStatus == VerifyDocumentationStatus.APPROVED
        ? SizedBox.shrink()
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.documentType.tr,
                style: context.textTheme.headline6,
              ),
              SizedBox(
                height: 10,
              ),
              IdentifyTutorialWidget(
                documentType: widget.documentType,
              ),
              SizedBox(
                height: 5,
              ),
              data.errorText.isBlank
                  ? SizedBox.shrink()
                  : Text(
                      data.errorText,
                      style: textStyleValidate,
                    ),
              SizedBox(
                height: 10,
              ),
              CustomDefaultButton(
                press: () {
                  if (widget.onPressButton != null) {
                    widget.onPressButton();
                  } else {
                    context.read<InheritanceCubit>().updateDocument(
                        data.imageSelects, '', widget.documentType);
                  }
                },
                /* context.read<InheritanceCubit>().onSelectDocument(documentType),*/
                isLoading: data.isLoadingDocument,
                text: 'update_document'.tr,
              )
            ],
          );
  }
}
