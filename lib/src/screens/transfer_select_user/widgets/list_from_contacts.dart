import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/chatbox/widgets/separator_widget.dart';
import 'package:vipay/src/screens/transfer_select_user/cubit/transfer_select_user_cubit.dart';
import 'package:vipay/src/screens/transfer_select_user/shimmer/contact_shimmer.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/item_contact_transfer_widget.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/title_widget.dart';

class ListFromContact extends StatelessWidget {
  final Size size;

  ListFromContact({
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<TransferSelectUserCubit>();
    final state = cubit.state;
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(titleKey: 'from_contacts'),
          state.listContact == null
              ? ContactShimmer()
              : (state.listContact.isEmpty
                  ? buildNotificationPermission(state.permissionStatus)
                  : buildListContact(cubit))
        ],
      ),
    );
  }

  Widget buildListContact(TransferSelectUserCubit cubit) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 15.0),
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final contact = cubit.state.listContact[index];
              return ItemContactTransferWidget(
                title: contact.displayName,
                onPress: () {
                  cubit.searchUserFromContact(
                    contact.phones.isEmpty
                        ? ''
                        : contact.phones.elementAt(0).value,
                  );
                },
                imgAvatar: contact.initials(),
                size: size,
                subTitle: contact.phones.isEmpty
                    ? ''
                    : contact.phones.elementAt(0).value,
              );
            },
            separatorBuilder: (context, index) {
              return SeparatorWidget();
            },
            itemCount: cubit.state.listContact.length),
      ),
    );
  }

  Widget buildNotificationPermission(PermissionStatus permissionStatus) {
    String text;
    if (permissionStatus == PermissionStatus.granted) {
      text = 'contacts_are_empty'.tr;
    }
    if (permissionStatus == PermissionStatus.denied) {
      text = 'contacts_access_has_been_denied'.tr;
    }
    if (permissionStatus == PermissionStatus.permanentlyDenied) {
      text = 'contacts_access_has_been_denied_permanently'.tr;
    }
    if (text == null) {
      return SizedBox.shrink();
    }
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: colorGrey.withOpacity(0.65),
          ),
        ),
      ),
    );
  }
}
