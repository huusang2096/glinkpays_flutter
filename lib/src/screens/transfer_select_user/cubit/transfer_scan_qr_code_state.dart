part of 'transfer_scan_qr_code_cubit.dart';

@freezed
abstract class TransferScanQrCodeData with _$TransferScanQrCodeData {
  const factory TransferScanQrCodeData({
    @Default(false) bool isTorchOn,
    @Default(false) bool isPause,
    @Default(false) bool isLoadingScaffold,
    @Default(false) bool isLoadingNationalID,
  }) = Data;
}

@freezed
abstract class TransferScanQrCodeState with _$TransferScanQrCodeState {
  const factory TransferScanQrCodeState.initial(Data data) = Initial;
  const factory TransferScanQrCodeState(Data data) = Load;
}
