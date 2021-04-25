part of 'support_ticket_cubit.dart';

@freezed
abstract class SupportTicketStateData with _$SupportTicketStateData {
  const factory SupportTicketStateData({
    bool isLoading,
    TicketResponse ticketResponse,
    UpdateTicketResponse updateTicketResponse,
    String typePriority,
    @Default('') String ticketTitle,
  }) = Data;
}

@freezed
abstract class SupportTicketState with _$SupportTicketState {
  const factory SupportTicketState.initial(Data data) = Initial;
  const factory SupportTicketState.loading(Data data) = Loading;
  const factory SupportTicketState.getTicket(Data data) = GetTicketSuccessData;
  const factory SupportTicketState.updateTicket(Data data) =
      UpdateTicketSuccessData;
  const factory SupportTicketState.changeTypePriority(Data data) =
      ChangeTypePriorityData;
  const factory SupportTicketState.showSendTicketModal(Data data) =
      ShowSendTicketModal;
}
