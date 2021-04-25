import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vipay/src/models/user.dart';
import 'package:simplest/simplest.dart';

class ProfileSettingsDialog extends StatefulWidget {
  User user;
  VoidCallback onChanged;

  ProfileSettingsDialog({Key key, this.user, this.onChanged}) : super(key: key);

  @override
  _ProfileSettingsDialogState createState() => _ProfileSettingsDialogState();
}

class _ProfileSettingsDialogState extends State<ProfileSettingsDialog> {
  GlobalKey<FormState> _profileSettingsFormKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return SimpleDialog(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                titlePadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                title: Row(
                  children: <Widget>[
                    Icon(Icons.person),
                    SizedBox(width: 10),
                    Text(
                      'profile_settings'.tr,
                      style: Theme.of(context).textTheme.body2,
                    )
                  ],
                ),
                children: <Widget>[
                  Form(
                    key: _profileSettingsFormKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: getInputDecoration(
                              hintText: widget.user.email == null
                                  ? ""
                                  : widget.user.email,
                              labelText: 'first_name'.tr),
                          style: TextStyle(
                              fontFamily: "worksans",
                              color: Theme.of(context).accentColor,
                              fontSize: 18),
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (input) => widget.user.firstName = input,
                          initialValue: widget.user.firstName == null
                              ? ""
                              : widget.user.firstName,
                          validator: (input) => input.trim().length < 3
                              ? 'not_a_valid_first_name'.tr
                              : null,
                        ),
                        TextFormField(
                          decoration: getInputDecoration(
                              hintText: widget.user.email == null
                                  ? ""
                                  : widget.user.email,
                              labelText: 'last_name'.tr),
                          style: TextStyle(
                              fontFamily: "worksans",
                              color: Theme.of(context).accentColor,
                              fontSize: 18),
                          onSaved: (input) => widget.user.lastName = input,
                          keyboardType: TextInputType.emailAddress,
                          initialValue: widget.user.lastName == null
                              ? ""
                              : widget.user.lastName,
                          validator: (input) => input.trim().length < 3
                              ? 'not_a_valid_last_name'.tr
                              : null,
                        ),
                        TextFormField(
                          decoration: getInputDecoration(
                              hintText: widget.user.email == null
                                  ? ""
                                  : widget.user.email,
                              labelText: 'an_email'.tr),
                          style: TextStyle(
                              fontFamily: "worksans",
                              color: Theme.of(context).accentColor,
                              fontSize: 18),
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (input) => widget.user.email = input,
                          initialValue: widget.user.email == null
                              ? ""
                              : widget.user.email,
                          validator: (input) => !input.contains('@')
                              ? 'not_a_valid_email'.tr
                              : null,
                        ),
                        TextFormField(
                          decoration: getInputDecoration(
                              hintText: widget.user.phone == null
                                  ? ""
                                  : widget.user.phone,
                              labelText: 'phone_number'.tr),
                          style: TextStyle(
                              fontFamily: "worksans",
                              color: Theme.of(context).accentColor,
                              fontSize: 18),
                          onSaved: (input) => widget.user.phone = input,
                          initialValue: widget.user.phone == null
                              ? ""
                              : widget.user.phone,
                          validator: (input) => input.trim().length < 3
                              ? 'not_a_valid_phone_number'.tr
                              : null,
                        ),
                        TextFormField(
                          decoration: getInputDecoration(
                              hintText: widget.user.address == null
                                  ? ""
                                  : widget.user.address,
                              labelText: 'address'.tr),
                          style: TextStyle(
                              fontFamily: "worksans",
                              color: Theme.of(context).accentColor,
                              fontSize: 18),
                          initialValue: widget.user.address1 == null
                              ? ""
                              : widget.user.address1,
                          onSaved: (input) => widget.user.address1 = input,
                          validator: (input) => input.trim().length < 3
                              ? 'not_a_valid_address'.tr
                              : null,
                        ),
                        TextFormField(
                          decoration: getInputDecoration(
                              hintText: widget.user.address == null
                                  ? ""
                                  : widget.user.address,
                              labelText: 'city'.tr),
                          style: TextStyle(
                              fontFamily: "worksans",
                              color: Theme.of(context).accentColor,
                              fontSize: 18),
                          initialValue:
                              widget.user.city == null ? "" : widget.user.city,
                          onSaved: (input) => widget.user.city = input,
                          validator: (input) => input.trim().length < 3
                              ? 'not_a_valid_city'.tr
                              : null,
                        ),
                        TextFormField(
                          decoration: getInputDecoration(
                              hintText: widget.user.address == null
                                  ? ""
                                  : widget.user.address,
                              labelText: 'state'.tr),
                          style: TextStyle(
                              fontFamily: "worksans",
                              color: Theme.of(context).accentColor,
                              fontSize: 18),
                          initialValue: widget.user.state == null
                              ? ""
                              : widget.user.state,
                          onSaved: (input) => widget.user.state = input,
                          validator: (input) => input.trim().length < 3
                              ? 'not_a_valid_state'.tr
                              : null,
                        ),
                        FormField<String>(
                          builder: (FormFieldState<String> state) {
                            return DateTimeField(
                              readOnly: true,
                              decoration: getInputDecoration(
                                  hintText: widget.user.birthday == null
                                      ? ""
                                      : widget.user.birthday,
                                  labelText: 'birth_date'.tr),
                              style: TextStyle(
                                  fontFamily: "worksans",
                                  color: Theme.of(context).accentColor,
                                  fontSize: 18),
                              format: new DateFormat('yyyy-MM-dd'),
                              initialValue: widget.user.birthday == ""
                                  ? DateTime.now()
                                  : new DateFormat('yyyy-MM-dd')
                                      .parse(widget.user.birthday.toString()),
                              validator: (input) =>
                                  input == null ? 'time_is_empty'.tr : null,
                              onShowPicker: (context, currentValue) {
                                return showDatePicker(
                                    context: context,
                                    firstDate: DateTime(1900),
                                    initialDate: currentValue ?? DateTime.now(),
                                    lastDate: DateTime(2100));
                              },
                              onSaved: (input) => setState(() {
                                widget.user.birthday = (input.toString());
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('cancel'.tr),
                      ),
                      MaterialButton(
                        onPressed: _submit,
                        child: Text(
                          'save'.tr,
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                  SizedBox(height: 10),
                ],
              );
            });
      },
      child: Text(
        'edit'.tr,
        style: Theme.of(context).textTheme.body1,
      ),
    );
  }

  InputDecoration getInputDecoration({String hintText, String labelText}) {
    return new InputDecoration(
      hintText: hintText,
      labelText: labelText,
      hintStyle: Theme.of(context).textTheme.body1.merge(
            TextStyle(color: Theme.of(context).focusColor),
          ),
      enabledBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(color: Theme.of(context).hintColor.withOpacity(0.2))),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).hintColor)),
      hasFloatingPlaceholder: true,
      labelStyle: Theme.of(context).textTheme.body1.merge(
            TextStyle(color: Theme.of(context).hintColor),
          ),
    );
  }

  void _submit() {
    if (_profileSettingsFormKey.currentState.validate()) {
      _profileSettingsFormKey.currentState.save();
      widget.onChanged();
      Navigator.pop(context);
    }
  }
}
