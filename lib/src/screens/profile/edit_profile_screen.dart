import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/common/resources.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/common/validations.dart';
import 'package:vipay/src/screens/inheritance/cubit/inheritance_cubit.dart';
import 'package:vipay/src/screens/profile/cubit/profile_cubit.dart';
import 'package:vipay/src/screens/profile/widgets/custom_default_button.dart';
import 'package:vipay/src/screens/profile/widgets/inheritance_widget.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';
import 'package:vipay/src/common/style.dart';
import 'package:simplest/simplest.dart';

class EditProfileScreen extends CubitWidget<ProfileCubit, ProfileState> {
  final _formKey = GlobalKey<FormState>();
  final Validations _validations = Validations();
  final _size72 = 72.0;
  List<String> items;
  String _timeText = '';

  TextEditingController _mobileController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  PhoneNumber _phoneNumber = PhoneNumber(isoCode: 'VN');

  static provider() {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => ProfileCubit(),
      ),
      BlocProvider(
        create: (context) => InheritanceCubit(),
      )
    ], child: EditProfileScreen());
  }

  @override
  void afterFirstLayout(BuildContext context) {
    context.read<InheritanceCubit>().loadData();
    super.afterFirstLayout(context);
    bloc.getProfile();
  }

  @override
  void listener(BuildContext context, ProfileState state) {
    super.listener(context, state);
    if (state is GetProfileSuccessState) {
      final _user = state.profileResponse.data;
      _firstNameController =
          TextEditingController(text: _user?.firstName ?? '');
      _lastNameController = TextEditingController(text: _user?.lastName ?? '');
      _addressController = TextEditingController(text: _user?.address1 ?? '');
      _emailController = TextEditingController(text: _user?.email ?? '');
      _mobileController = TextEditingController(text: _user?.phone ?? '');
      _phoneNumber = PhoneNumber(
        phoneNumber: _user?.phone ?? '',
        isoCode: 'VN',
        dialCode: '+84',
      );
      _timeText = _user?.birthday ?? '';
    }

    /// [Anh Vu] Don't need to pop, just show a message
    if (state is UpdateProfileSuccessState) {
      locator<SnackbarService>()
          .showSnackbar(message: 'update_profile_success'.tr);
    }
  }

  @override
  Widget builder(BuildContext context, ProfileState state) {
    return AppProgressHUB(
      inAsyncCall: state.isLoading,
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Form(
                  key: _formKey,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 16),
                            _buildHeaderEditProfile(context, state),
                            SizedBox(height: 32),
                            // first name
                            _buildBodyEditProfile(context, state),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _handleEditStatusEmailField(ProfileState state) {
    if (state.profileResponse?.data?.emailVerification ?? false) {
      return false;
    } else {
      return true;
    }
  }

  bool _handleEditStatusPhoneField(ProfileState state) {
    if (state.profileResponse?.data?.phoneVerificationCode ?? false) {
      return false;
    } else {
      return true;
    }
  }

  Widget _buildHeaderEditProfile(BuildContext context, ProfileState state) {
    return Center(
      child: Stack(
        children: [
          _buildAvatarWidget(state),
          Positioned(
            right: 0.0,
            bottom: 0.0,
            child: GestureDetector(
              onTap: bloc.updateImage,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1.6,
                  ),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                padding: EdgeInsets.all(6.0),
                child: Icon(
                  Icons.edit,
                  size: 12.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBodyEditProfile(BuildContext context, ProfileState state) {
    items = ['male', 'female'];
    if (state.profileRequest.birthday != null) {
      _timeText =
          dateFormatter.format(DateTime.parse(state.profileRequest.birthday));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: 'last_name'.tr + ": ",
              style: body1,
            ),
            TextSpan(text: '*', style: body1.copyWith(color: Colors.red))
          ]),
        ),
        TextFormField(
          keyboardType: TextInputType.name,
          controller: _lastNameController,
          validator: _validations.validateName,
          onSaved: (String value) {
            _lastNameController.text = value;
            bloc.updateLastName(value);
          },
          decoration: InputDecoration(hintText: 'enter_your_last_name'.tr),
        ),
        SizedBox(height: 16.0),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: 'first_name'.tr + ": ",
              style: body1,
            ),
            TextSpan(text: '*', style: body1.copyWith(color: Colors.red))
          ]),
        ),
        TextFormField(
          keyboardType: TextInputType.name,
          controller: _firstNameController,
          validator: _validations.validateName,
          onSaved: (String value) {
            _firstNameController.text = value;
            bloc.updateFirstName(value);
          },
          decoration: InputDecoration(hintText: 'enter_your_first_name'.tr),
        ),
        SizedBox(height: 16.0),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: 'birth_date'.tr + ': ',
              style: body1,
            ),
            TextSpan(text: '*', style: body1.copyWith(color: Colors.red))
          ]),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: greyColor,
                      width: 1.0,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    _timeText.isEmpty
                        ? ''
                        : DateFormat('dd-MM-yyyy')
                            .format(DateTime.parse(_timeText)),
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.calendar_today),
              ),
              onTap: () {
                showDatePicker(
                        context: context,
                        initialDate: _timeText.isNotEmpty
                            ? DateTime.parse(_timeText)
                            : DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                        fieldHintText: 'dd/mm/yyyy')
                    .then((pickedDay) {
                  if (pickedDay == null) {
                    return;
                  }
                  bloc.selectBirthDay(pickedDay);
                  pickedDay = null;
                });
              },
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Container(child: Text('gender'.tr)),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: greyColor,
                width: 1.0,
              ),
            ),
          ),
          child: DropdownButton<String>(
            underline: SizedBox(),
            isExpanded: true,
            value: state.profileRequest?.gender ??
                state.profileResponse.data.gender,
            icon: Icon(Icons.arrow_drop_down),
            items: items.map<DropdownMenuItem<String>>((String val) {
              return DropdownMenuItem<String>(
                value: val,
                child: Text(val.tr),
              );
            }).toList(),
            onChanged: bloc.selectGender,
          ),
        ),
        SizedBox(height: 16.0),
        Container(child: Text('phone'.tr)),
        InternationalPhoneNumberInput(
          // selectorConfig:
          //     SelectorConfig(selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
          onInputChanged: (value) {
            _phoneNumber = value;
          },
          countrySelectorScrollControlled: true,
          textFieldController: _mobileController,
          onInputValidated: (isValidate) {},
          initialValue: _phoneNumber,
          autoValidateMode: AutovalidateMode.onUserInteraction,
          inputDecoration: InputDecoration(
            suffixIcon: _handleEditStatusPhoneField(state)
                ? null
                : Tooltip(
                    message: 'your_phone_has_verify_contact_admin_to_change'.tr,
                    child: IconButton(
                      padding: EdgeInsets.only(bottom: 12),
                      onPressed: () => navigator.pushNamed(
                          RouteGenerator.supportTicketScreen,
                          arguments: {
                            'titleTicket': 'i_want_to_change_my_phone'.tr
                          }),
                      icon: Icon(Icons.verified_user),
                      color: Colors.green,
                    ),
                  ),
            hintText: 'phone'.tr,
          ),
          isEnabled: false,
        ),
        SizedBox(height: 16.0),
        Container(child: Text('address'.tr)),
        TextFormField(
          keyboardType: TextInputType.text,
          controller: _addressController,
          onSaved: (String value) {
            _addressController.text = value;
            bloc.updateAddress(value);
          },
          decoration: InputDecoration(hintText: 'enter_your_address'.tr),
        ),
        SizedBox(height: 16.0),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: 'email'.tr + ": ",
              style: body1,
            ),
            TextSpan(text: '*', style: body1.copyWith(color: Colors.red))
          ]),
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          controller: _emailController,
          enabled: _handleEditStatusEmailField(state),
          validator: _validations.validateEmail,
          onSaved: (String value) {
            _emailController.text = value;
            bloc.updateEmail(value);
          },
          decoration: InputDecoration(
              suffixIcon: _handleEditStatusEmailField(state)
                  ? null
                  : Tooltip(
                      message:
                          'your_email_has_verify_contact_admin_to_change'.tr,
                      child: IconButton(
                        onPressed: () => navigator.pushNamed(
                            RouteGenerator.supportTicketScreen,
                            arguments: {
                              'titleTicket': 'i_want_to_change_my_email'.tr
                            }),
                        icon: Icon(Icons.verified_user),
                        color: Colors.green,
                      ),
                    ),
              hintText: 'enter_your_email'.tr),
        ),
        SizedBox(height: 40.0),
        CustomDefaultButton(
          text: 'update_user',
          press: () {
            _handleUpdate(context, state);
          },
        ),
        SizedBox(height: 40),
        InheritanceWidget()
      ],
    );
  }

  void _handleUpdate(BuildContext context, ProfileState state) {
    if (_formKey.currentState.validate()) {
      bloc.submitUpdate(
        firstNames: _firstNameController.text,
        lastName: _lastNameController.text,
        address: _addressController.text,
        email: _emailController.text,
        mobile: _phoneNumber,
        dob: _timeText,
      );
    }
  }

  Widget _buildAvatarWidget(ProfileState state) {
    final _localImage = state.profileRequestImg?.image;
    final _avatarUrl = state.profileResponse?.data?.image ?? '';
    Widget _avatarContent = Image.asset(
      Images.defaultAvatar,
      height: _size72,
      width: _size72,
      fit: BoxFit.cover,
    );

    if (_localImage != null) {
      _avatarContent = Image.file(
        _localImage,
        height: _size72,
        width: _size72,
        fit: BoxFit.cover,
      );
    } else if (_avatarUrl.isNotEmpty) {
      _avatarContent = CachedNetworkImage(
        imageUrl: _avatarUrl,
        height: _size72,
        width: _size72,
        fit: BoxFit.cover,
      );
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(80.0),
      child: _avatarContent,
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      title: Text(
        'personal'.tr,
        style: TextStyle(
          color: whiteColor,
        ),
      ),
      leading: IconButton(
        onPressed: () {
          navigator.pop();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: whiteColor,
        ),
      ),
      centerTitle: true,
    );
  }
}
