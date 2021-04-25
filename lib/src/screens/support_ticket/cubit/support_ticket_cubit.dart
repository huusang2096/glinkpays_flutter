import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/support_ticket/ticket_request.dart';
import 'package:vipay/src/models/support_ticket/ticket_response.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/models/support_ticket/update_ticket_response.dart';

part 'support_ticket_state.dart';
part 'support_ticket_cubit.freezed.dart';

class SupportTicketCubit extends BaseCubit<SupportTicketState> {
  SupportTicketCubit()
      : super(Initial(Data(
          isLoading: false,
          ticketResponse: null,
          typePriority: 'normal'.tr,
        )));

  void getSupportTicket() async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      final ticketResponse = await dataRepository.getSupportTicket();
      emit(GetTicketSuccessData(
          state.data.copyWith(ticketResponse: ticketResponse)));
    } catch (e) {
      handleAppError(e);
    }
    emit(Loading(state.data.copyWith(isLoading: false)));
  }

  void updateSupportTicket(
      {String subject, String message, String priority}) async {
    switch (priority) {
      case 'Cao':
        priority = 'High';
        break;
      case 'Bình thường':
        priority = 'Normal';
        break;
      case 'Thấp':
        priority = 'Low';
        break;
    }
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      final request = TicketRequest(
        subject: subject,
        message: message,
        priority: priority,
      );

      final updateTicketResponse = await dataRepository.updateTicket(request);
      if (updateTicketResponse != null) {
        await getSupportTicket();
        snackbarService.showSnackbar(message: 'update_ticket_success'.tr);
        emit(UpdateTicketSuccessData(
            state.data.copyWith(updateTicketResponse: updateTicketResponse)));
      }
    } catch (e) {
      handleAppError(e);
    }
    emit(Loading(state.data.copyWith(isLoading: false)));
  }

  void updateTypePriority({String typePriority}) {
    emit(ChangeTypePriorityData(
        state.data.copyWith(typePriority: typePriority)));
  }

  void showSendTicketModalSheet(String ticketTitle) {
    emit(ShowSendTicketModal(
        state.data.copyWith(ticketTitle: ticketTitle, isLoading: false)));
  }
}
