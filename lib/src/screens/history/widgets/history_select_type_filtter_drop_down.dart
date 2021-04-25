import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/history/cubit/history_cubit.dart';

class SelectTypeFilterDropDown extends StatelessWidget {
  final Size size;
  final List<String> listTransactionType;
  SelectTypeFilterDropDown({this.size, this.listTransactionType});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<HistoryCubit>();
    final state = cubit.state;
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.filter_list_sharp,
                color: lightBlueColor300,
              ),
              SizedBox(
                width: 4.0,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton(
                  isDense: true,
                  iconSize: 0.0,
                  hint: Row(
                    children: [
                      Text(
                        'filter'.tr,
                        style: TextStyle(
                          color: lightBlueColor300,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down_rounded,
                        color: lightBlueColor300,
                      ),
                    ],
                  ),
                  items: listTransactionType.map((e) {
                    return DropdownMenuItem(
                      child: SingleChildScrollView(
                        child: Row(
                          children: [
                            Text(e.toLowerCase().tr),
                          ],
                        ),
                      ),
                      value: e,
                      onTap: () async {
                        cubit.filterTransactionType(
                            value: e, listHistory: state.data.listHistory);
                      },
                    );
                  }).toList(),
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              state.data?.stringType?.toLowerCase()?.tr ?? '',
              style: TextStyle(
                color: lightBlueColor300,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
