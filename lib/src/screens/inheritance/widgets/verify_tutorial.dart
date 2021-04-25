import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vipay/src/common/config.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/models/image_selected_model.dart';
import 'package:vipay/src/screens/inheritance/cubit/inheritance_cubit.dart';

import 'image_item_widget.dart';

class IdentifyTutorialWidget extends StatelessWidget {
  final String documentType;
  IdentifyTutorialWidget({Key key, this.documentType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<ImageSelect> imageSelects =
        context.watch<InheritanceCubit>().state.data.imageSelects;

    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 700,
          autoPlay: false,
          enlargeCenterPage: false,
          enableInfiniteScroll: true,
        ),
        items: [
          faceTutorialwidget(context, imageSelects[2]),
          frontTutorialwidget(context, imageSelects[0]),
          behindTutorialwidget(context, imageSelects[1]),
        ],
      ),
    );
  }

  Widget faceTutorialwidget(BuildContext context, ImageSelect imgSelect) {
    return Container(
      height: 700,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      color: Colors.grey.withOpacity(0.1),
      child: Column(
        children: [
          Center(
              child: Text(
            'face'.tr,
            style: heading1,
          )),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 7,
                child: Image.asset(
                  'assets/img/face_with_correct.png',
                  width: 130,
                  height: 130,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text.rich(
            TextSpan(children: [
              WidgetSpan(child: Icon(Icons.arrow_right_outlined)),
              TextSpan(
                text: 'face_verify_description_1'.trArgs([documentType.tr]),
                style: body1,
              ),
            ]),
          ),
          SizedBox(
            height: 5,
          ),
          Text.rich(
            TextSpan(children: [
              WidgetSpan(child: Icon(Icons.arrow_right_outlined)),
              TextSpan(
                text: 'face_verify_description_2'.tr,
                style: body1,
              ),
            ]),
          ),
          SizedBox(
            height: 5,
          ),
          Text.rich(
            TextSpan(children: [
              WidgetSpan(child: Icon(Icons.arrow_right_outlined)),
              TextSpan(
                text: 'face_verify_description_3'.trArgs([documentType.tr]),
                style: body1,
              ),
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/img/face_with_error_1.png',
                  width: 100,
                  height: 130,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/img/face_with_error_2.png',
                  width: 100,
                  height: 130,
                ),
              )
            ],
          ),
          Expanded(
            flex: 8,
            child: ImageItemWidget(
              imageSelect: imgSelect,
              index: 2,
              onSelectDelete: (image) {
                context.read<InheritanceCubit>().deleteImage(2);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget frontTutorialwidget(BuildContext context, ImageSelect imageSelect) {
    return Container(
      height: 700,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      color: Colors.grey.withOpacity(0.1),
      child: Column(
        children: [
          Center(
              child: Text(
            'front'.tr,
            style: heading1,
          )),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 7,
                child: Image.asset(
                  'assets/img/front_correct.png',
                  width: 130,
                  height: 130,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text.rich(
            TextSpan(children: [
              WidgetSpan(child: Icon(Icons.arrow_right_outlined)),
              TextSpan(
                text: 'front_verify_description_1'.trArgs([documentType.tr]),
                style: body1,
              ),
            ]),
          ),
          SizedBox(
            height: 5,
          ),
          Text.rich(
            TextSpan(children: [
              WidgetSpan(child: Icon(Icons.arrow_right_outlined)),
              TextSpan(
                text: 'front_verify_description_2'.tr,
                style: body1,
              ),
            ]),
          ),
          SizedBox(
            height: 5,
          ),
          Text.rich(
            TextSpan(children: [
              WidgetSpan(child: Icon(Icons.arrow_right_outlined)),
              TextSpan(
                text: 'front_verify_description_3'.trArgs([documentType.tr]),
                style: body1,
              ),
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/img/front_error_1.png',
                  width: 100,
                  height: 130,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/img/front_error_2.png',
                  width: 100,
                  height: 130,
                ),
              )
            ],
          ),
          Expanded(
            flex: 8,
            child: ImageItemWidget(
              imageSelect: imageSelect,
              index: 0,
              onSelectDelete: (image) {
                context.read<InheritanceCubit>().deleteImage(0);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget behindTutorialwidget(BuildContext context, ImageSelect imageSelect) {
    return Container(
      height: 700,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      color: Colors.grey.withOpacity(0.1),
      child: Column(
        children: [
          Center(
              child: Text(
            'behind'.tr,
            style: heading1,
          )),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 7,
                  child: Image.asset(
                    'assets/img/behind_correct.png',
                    width: 130,
                    height: 130,
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text.rich(
            TextSpan(children: [
              WidgetSpan(child: Icon(Icons.arrow_right_outlined)),
              TextSpan(
                text: 'behind_verify_description_1'.trArgs([documentType.tr]),
                style: body1,
              ),
            ]),
          ),
          SizedBox(
            height: 5,
          ),
          Text.rich(
            TextSpan(children: [
              WidgetSpan(child: Icon(Icons.arrow_right_outlined)),
              TextSpan(
                text: 'behind_verify_description_2'.tr,
                style: body1,
              ),
            ]),
          ),
          SizedBox(
            height: 5,
          ),
          Text.rich(
            TextSpan(children: [
              WidgetSpan(child: Icon(Icons.arrow_right_outlined)),
              TextSpan(
                text: 'behind_verify_description_3'.trArgs([documentType.tr]),
                style: body1,
              ),
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/img/behind_error_1.png',
                  width: 100,
                  height: 130,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/img/behind_error_2.png',
                  width: 100,
                  height: 130,
                ),
              )
            ],
          ),
          Expanded(
            flex: 8,
            child: ImageItemWidget(
              imageSelect: imageSelect,
              index: 1,
              onSelectDelete: (image) {
                context.read<InheritanceCubit>().deleteImage(1);
              },
            ),
          ),
        ],
      ),
    );
  }
}
