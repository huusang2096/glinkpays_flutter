import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/transfer/cubit/transfer/transfer_cubit.dart';

class InformationContactWidget extends StatelessWidget {
  final double width = 80.0;
  final double height = 80.0;
  @override
  Widget build(BuildContext context) {
    final state = context.watch<TransferCubit>().state;
    return Container(
      child: Column(
        children: [
          state.data.user?.image != null && state.data.user.image.isNotEmpty
              ? CachedNetworkImage(
                  imageUrl: state.data.user?.image ?? '',
                  memCacheWidth: 250,
                  imageBuilder: (context, img) {
                    return Container(
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: img, fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(
                          Radius.circular(width / 2),
                        ),
                      ),
                    );
                  },
                  errorWidget: (
                    context,
                    url,
                    error,
                  ) {
                    return SizedBox(
                      width: width,
                      height: height,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.error, color: redColor),
                          SizedBox(height: 2.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'image_error'.tr,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  placeholder: (context, string) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[300],
                      highlightColor: Colors.grey[100],
                      child: Container(
                        width: width,
                        height: height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(width / 2),
                          ),
                          color: Colors.white,
                        ),
                      ),
                    );
                  },
                )
              : SvgPicture.asset(
                  'assets/svg/avatar_icon.svg',
                  width: width,
                  height: height,
                ),
          SizedBox(height: 5.0),
          Text(state.data.user.name ?? ' ',
              style: body1.copyWith(color: colorBackgroundAppBar)),
          SizedBox(height: 2.0),
          Text(state.data.user.phone ?? state.data.user.email ?? ' ')
        ],
      ),
    );
  }
}
