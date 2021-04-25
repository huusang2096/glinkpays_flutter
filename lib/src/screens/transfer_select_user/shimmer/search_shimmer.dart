import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/chatbox/widgets/separator_widget.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/title_widget.dart';
import 'package:simplest/simplest.dart';

class TransferSelectUserShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleWidget(titleKey: 'search_results'),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SeparatorWidget();
                },
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    child: Row(
                      children: [
                        SizedBox(width: 8.0),
                        SvgPicture.asset(
                          'assets/svg/avatar_icon.svg',
                          width: 60.0,
                          height: 60.0,
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Shimmer.fromColors(
                                    baseColor: colorGrey300,
                                    highlightColor: colorGrey100,
                                    child: Container(
                                      color: colorWhite,
                                      child: Text('thevingglink@gmail.com',
                                          style: body1.copyWith(
                                              color: Colors.transparent)),
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Shimmer.fromColors(
                                    baseColor: colorGrey300,
                                    highlightColor: colorGrey100,
                                    child: Container(
                                      color: colorWhite,
                                      child: Text('thevingglink@gmail.com',
                                          style: body2.copyWith(
                                              color: Colors.transparent),
                                          maxLines: 2,
                                          overflow: TextOverflow.clip),
                                    ),
                                  )
                                ]),
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
