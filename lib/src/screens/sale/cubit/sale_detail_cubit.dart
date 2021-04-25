import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/home/foods_response.dart';

part 'sale_detail_state.dart';

class SaleDetailCubit extends BaseCubit<SaleDetailState> {
  SaleDetailCubit(FoodData voucher) : super(SaleDetailInitial(voucher));

  String handleInformation(String information) {
    final handleString = information.replaceFirst('PM</p>', '\n');
    final result = Helper.skipHtml(handleString);
    return result;
  }
}
