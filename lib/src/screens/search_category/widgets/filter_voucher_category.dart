import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/home/category_response.dart';
import 'package:vipay/src/models/voucher/voucher_type.dart';
import 'package:vipay/src/screens/search_category/cubit/search_voucher_category_cubit.dart';
import 'package:vipay/src/screens/search_category/widgets/range_distance_search_widget.dart';

class FilterVoucherCategory extends StatelessWidget {
  final String categoryKeyID;
  List<Category> categories = [];
  List<String> categoriesSelected;
  List<VoucherType> vouchersType = [];
  List<String> vouchersTypeSelected;
  double maxValueDistance = 100.0;
  bool isTrending = false;
  double valueDistance = 0.0;
  String keyword = '';

  FilterVoucherCategory({Key key, this.categoryKeyID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    categories =
        context.watch<SearchVoucherCategoryCubit>().state.data.categorys;
    vouchersType =
        context.watch<SearchVoucherCategoryCubit>().state.data.voucherTypes;
    categoriesSelected =
        context.watch<SearchVoucherCategoryCubit>().state.data.categoryId;
    vouchersTypeSelected =
        context.watch<SearchVoucherCategoryCubit>().state.data.foodTypeId;
    isTrending =
        context.watch<SearchVoucherCategoryCubit>().state.data.isTrending;
    keyword = context.watch<SearchVoucherCategoryCubit>().state.data.keyWord;
    valueDistance =
        context.watch<SearchVoucherCategoryCubit>().state.data.valueDistance;

    Widget _buildCondition() {
      return CheckboxListTile(
        value: isTrending,
        onChanged: (value) {
          context.read<SearchVoucherCategoryCubit>().updateTrending(value);
        },
        title: Text('trending'.tr),
      );
    }

    Widget _buildCategories() {
      return ExpansionTile(
        title: Text('categories'.tr),
        children: List.generate(categories.length, (index) {
          Category category = categories.elementAt(index);
          final isSelected =
              categoriesSelected.any((item) => item == category.id.toString());
          return CheckboxListTile(
            value: isSelected,
            onChanged: (value) {
              context
                  .read<SearchVoucherCategoryCubit>()
                  .updateCategory(value, category.id);
            },
            title: Text(category.name ?? ''),
          );
        }),
        initiallyExpanded: true,
      );
    }

    Widget _buildVouchersType() {
      return ExpansionTile(
        title: Text('voucher_type'.tr),
        children: List.generate(vouchersType.length, (index) {
          var voucherType = vouchersType.elementAt(index);
          final isSelected = vouchersTypeSelected
              .any((item) => item.toString() == voucherType.id.toString());
          return CheckboxListTile(
            value: isSelected,
            onChanged: (value) {
              context
                  .read<SearchVoucherCategoryCubit>()
                  .updateVoucherTypes(value, voucherType.id);
            },
            title: Text(voucherType.name ?? ''),
          );
        }),
        initiallyExpanded: true,
      );
    }

    return Drawer(
      child: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          primary: true,
          shrinkWrap: true,
          children: <Widget>[
            _buildCondition(),
            _buildCategories(),
            _buildVouchersType(),
            BuildRangeDistance(
              onChangeDistance: (value) {
                context
                    .read<SearchVoucherCategoryCubit>()
                    .updateValueDistance(value);
              },
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: FlatButton(
                onPressed: () {
                  // Save
                  context
                      .read<SearchVoucherCategoryCubit>()
                      .getListSearch(keyword);
                  Navigator.of(context).pop();
                },
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                color: appBarColor,
                shape: StadiumBorder(),
                child: Text(
                  'apply_filters'.tr,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
