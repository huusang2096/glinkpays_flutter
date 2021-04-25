import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/profile/widgets/custom_default_button.dart';
import 'package:vipay/src/screens/support_ticket/cubit/support_ticket_cubit.dart';
import 'package:vipay/src/screens/support_ticket/widgets/support_ticket_item_widget.dart';
import 'package:vipay/src/shimmer/support_ticket_shimmer.dart';

class SupportTicketScreen
    extends CubitWidget<SupportTicketCubit, SupportTicketState> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _subjectController = TextEditingController(text: '');
  final _messageController = TextEditingController(text: '');
  final String titleTicket;

  SupportTicketScreen({this.titleTicket});

  static provider({String titleTicket}) {
    return BlocProvider(
      create: (_) => SupportTicketCubit(),
      child: SupportTicketScreen(
        titleTicket: titleTicket,
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.getSupportTicket();
    if (!titleTicket.isBlank) {
      context.read<SupportTicketCubit>().showSendTicketModalSheet(titleTicket);
    }
  }

  @override
  void listener(BuildContext context, SupportTicketState state) {
    if (state is ShowSendTicketModal) {
      _showDialog(context, state, MediaQuery.of(context).size,
          titleText: state.data.ticketTitle);
    }
  }

  @override
  Widget builder(BuildContext context, SupportTicketState state) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('support_ticket'.tr),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Container(
          height: _size.height,
          width: _size.width,
          child: Stack(
            children: [
              _buildListViewTicket(context, state, _size),
              _buildButtonAdd(context, state, _size),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtonAdd(
      BuildContext context, SupportTicketState state, Size size) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: size.width * 0.9,
        height: 44.0,
        margin: EdgeInsets.only(bottom: 12.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(44.0),
          gradient: LinearGradient(
            colors: [beginGradientColor, endGradientColor],
          ),
        ),
        child: FlatButton(
          onPressed: () {
            _showDialog(context, state, size);
          },
          child: Text(
            'add_ticket'.tr,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildListViewTicket(
      BuildContext context, SupportTicketState state, Size size) {
    return state.data.ticketResponse != null
        ? state.data.ticketResponse.data.isEmpty
            ? Center(
                child: Text('empty_ticket'.tr,
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              )
            : SupportTicketItemWidget(
                response: state.data.ticketResponse, size: size)
        : SupportTicketShimmer();
  }

  void _showDialog(BuildContext context, SupportTicketState state, Size size,
      {String titleText}) {
    _subjectController.text = titleText;
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ).add(
              EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
            ),
            child: Container(
              width: size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: colorWhite,
              ),
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'add_ticket'.tr,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(hintText: 'subject'.tr),
                          controller: _subjectController,
                          // value.trim().length < 6 ? 'not_valid'.tr : null
                          validator: (value) {
                            if (value.isEmpty || value.length < 6) {
                              return 'address_over_6_characters'.tr;
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _subjectController.text = value;
                          },
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          minLines: 3,
                          maxLines: 5,
                          textInputAction: TextInputAction.newline,
                          decoration: InputDecoration(
                            hintText: 'message'.tr,
                            border: _outlineInputBorder(),
                            errorBorder: _outlineInputBorder(),
                            focusedBorder: _outlineInputBorder(),
                          ),
                          controller: _messageController,
                          validator: (value) {
                            if (value.isEmpty || value.length < 6) {
                              return 'address_over_6_characters'.tr;
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _messageController.text = value;
                          },
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: CustomDefaultButton(
                                  text: 'submit',
                                  height: 30.0,
                                  press: () {
                                    if (_formKey.currentState.validate()) {
                                      FocusScope.of(context).unfocus();
                                      bloc.updateSupportTicket(
                                        subject: _subjectController.text,
                                        message: _messageController.text,
                                        priority: state
                                            .data.typePriority, //valueDropdown
                                      );
                                      _messageController.clear();
                                      _subjectController.clear();
                                      navigator.pop();
                                    }
                                  },
                                  isLoading: state.data.isLoading,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: CustomDefaultButton(
                                  text: 'cancel',
                                  height: 30.0,
                                  press: () {
                                    navigator.pop();
                                    _messageController.clear();
                                    _subjectController.clear();
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }

  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    );
  }
}
