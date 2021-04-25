import 'package:flutter/material.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/style.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/screens/profile/cubit/profile_cubit.dart';

class CustomRowInfo extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String identification;
  final String address;
  final String birthDay;
  final Function press;
  final String gender;

  const CustomRowInfo(
      {Key key,
      this.name,
      this.email,
      this.address,
      this.birthDay,
      this.press,
      this.gender,
      this.phone,
      this.identification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String _dateTime = DateFormat('dd-MM-yyyy').format(birthDay);
    final state = context.watch<ProfileCubit>().state;
    bool handleIdentityStatus() {
      if (state?.profileResponse?.data?.identityVerificationWarring) {
        return false;
      } else {
        if (state.profileResponse?.data?.documentVerification?.first?.status ==
            'approved') {
          return true;
        }
        return false;
      }
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: whiteColor,
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: press,
                        child: Text(
                          'edit_profile'.tr,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'full_name_td'.tr,
                        style: heading18Black,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: AutoSizeText(
                            name ?? '',
                            style: heading18BlackNor,
                            maxLines: 1,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'email_td'.tr,
                        style: heading18Black,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: AutoSizeText(
                            email ?? '',
                            maxLines: 1,
                            style: heading18BlackNor,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      context
                                  .watch<ProfileCubit>()
                                  .state
                                  ?.profileResponse
                                  ?.data
                                  ?.emailVerification ??
                              false
                          ? InkWell(
                              onTap: () {
                                navigator.pushNamed(
                                    RouteGenerator.supportTicketScreen,
                                    arguments: {
                                      'titleTicket':
                                          'i_want_to_change_my_email'.tr
                                    });
                              },
                              child: Icon(
                                Icons.verified_user,
                                color: Colors.green,
                              ),
                            )
                          : InkWell(
                              onTap: () => navigator
                                  .pushNamed(RouteGenerator.verificationScreen),
                              child: Icon(
                                Icons.verified_user,
                                color: Colors.grey,
                              ),
                            )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'phone'.tr,
                        style: heading18Black,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: AutoSizeText(
                            phone ?? '',
                            maxLines: 1,
                            style: heading18BlackNor,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      context
                                  .watch<ProfileCubit>()
                                  .state
                                  .profileResponse
                                  ?.data
                                  ?.phoneVerificationCode ??
                              false
                          ? InkWell(
                              onTap: () {
                                navigator.pushNamed(
                                    RouteGenerator.supportTicketScreen,
                                    arguments: {
                                      'titleTicket':
                                          'i_want_to_change_my_phone'.tr
                                    });
                              },
                              child: Icon(
                                Icons.verified_user,
                                color: Colors.green,
                              ),
                            )
                          : InkWell(
                              onTap: () => navigator
                                  .pushNamed(RouteGenerator.verificationScreen),
                              child: Icon(
                                Icons.verified_user,
                                color: Colors.grey,
                              ),
                            )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'identification'.tr,
                        style: heading18Black,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: AutoSizeText(
                            identification ?? '',
                            maxLines: 1,
                            style: heading18BlackNor,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      handleIdentityStatus()
                          ? InkWell(
                              onTap: () {
                                navigator.pushNamed(
                                    RouteGenerator.supportTicketScreen,
                                    arguments: {
                                      'titleTicket':
                                          'i_want_to_change_my_identification'
                                              .tr
                                    });
                              },
                              child: Icon(
                                Icons.verified_user,
                                color: Colors.green,
                              ),
                            )
                          : InkWell(
                              onTap: () => navigator
                                  .pushNamed(RouteGenerator.verificationScreen),
                              child: Icon(
                                Icons.verified_user,
                                color: Colors.grey,
                              ),
                            )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'address_td'.tr,
                        style: heading18Black,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 6.0),
                          child: AutoSizeText(
                            address.isEmpty ? '-' : address,
                            maxLines: 1,
                            style: heading18BlackNor,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'birth_day_td'.tr,
                        style: heading18Black,
                      ),
                      Text(
                        birthDay.isEmpty
                            ? '--/--/----'
                            : DateFormat('dd-MM-yyyy')
                                    .format(DateTime.parse(birthDay))
                                    .toString() ??
                                '',
                        style: heading18BlackNor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'gender_td'.tr,
                        style: heading18Black,
                      ),
                      Text(
                        gender.tr ?? '',
                        style: heading18BlackNor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
