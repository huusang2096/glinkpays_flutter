import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/home/foods_response.dart';

part 'sale_state.dart';

class SaleCubit extends BaseCubit<SaleState> {
  SaleCubit(FoodDatasResponse vouchers) : super(SaleInitial(vouchers));

  String handleInformation(String information) {
    final handleString = information.replaceFirst('PM</p>', '\n');
    final result = Helper.skipHtml(handleString);
    return result;
  }
}
