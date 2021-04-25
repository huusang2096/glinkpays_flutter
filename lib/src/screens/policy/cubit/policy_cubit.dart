import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/models/policy/policy.dart';

part 'policy_state.dart';
part 'policy_cubit.freezed.dart';

class PolicyCubit extends BaseCubit<PolicyState> {
  PolicyCubit() : super(PolicyState.initial(Data()));

  void loadData() async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      final response = await dataRepository.getPolicies();
      if (response.data.isEmpty) {
        await dialogService.showDialog(
            title: 'thank_you'.tr,
            description: 'you_can_continue_to_use_app'.tr);
        navigator.pop();
      } else {
        emit(Loaded(
            state.data.copyWith(policies: response.data, isLoading: false)));
      }
    } catch (e) {
      handleAppError(e);
      emit(Error(state.data.copyWith(isLoading: false)));
    }
  }

  void accept(Policy policy) async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      await dataRepository.acceptPolicy(policy.ruleId, policy.versionNumber);
      await loadData();
    } catch (e) {
      handleAppError(e);
      emit(Error(state.data.copyWith(isLoading: false)));
    }
  }

  void updateAgree() {
    final isAgree = !state.data.isAgree;
    emit(UpdateAgree(state.data.copyWith(isAgree: isAgree)));
  }

  void onSelectConitue() {
    if (state.data.policies.isEmpty) {
      return loadData();
    }
    return accept(state.data.policies.first);
  }
}
