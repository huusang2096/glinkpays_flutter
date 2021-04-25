import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/models/image_selected_model.dart';
import 'package:vipay/src/screens/inheritance/cubit/inheritance_cubit.dart';

import 'catched_network_document_image_widget.dart';
import 'image_item_widget.dart';

class ImageReviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    InheritanceCubit bloc = context.watch<InheritanceCubit>();

    return GridView.builder(
      shrinkWrap: true,
      itemCount: bloc.state.data.imageSelects.length,
      physics: NeverScrollableScrollPhysics(),
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8),
      itemBuilder: (context, index) {
        ImageSelect image = bloc.state.data.imageSelects.elementAt(index);
        return ImageItemWidget(
          imageSelect: image,
          index: index,
          onSelectDelete: (image) {
            bloc.deleteImage(index);
          },
        );
      },
    );
  }
}
