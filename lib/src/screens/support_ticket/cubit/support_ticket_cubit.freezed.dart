// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'support_ticket_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SupportTicketStateDataTearOff {
  const _$SupportTicketStateDataTearOff();

// ignore: unused_element
  Data call(
      {bool isLoading,
      TicketResponse ticketResponse,
      UpdateTicketResponse updateTicketResponse,
      String typePriority,
      String ticketTitle = ''}) {
    return Data(
      isLoading: isLoading,
      ticketResponse: ticketResponse,
      updateTicketResponse: updateTicketResponse,
      typePriority: typePriority,
      ticketTitle: ticketTitle,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SupportTicketStateData = _$SupportTicketStateDataTearOff();

/// @nodoc
mixin _$SupportTicketStateData {
  bool get isLoading;
  TicketResponse get ticketResponse;
  UpdateTicketResponse get updateTicketResponse;
  String get typePriority;
  String get ticketTitle;

  @JsonKey(ignore: true)
  $SupportTicketStateDataCopyWith<SupportTicketStateData> get copyWith;
}

/// @nodoc
abstract class $SupportTicketStateDataCopyWith<$Res> {
  factory $SupportTicketStateDataCopyWith(SupportTicketStateData value,
          $Res Function(SupportTicketStateData) then) =
      _$SupportTicketStateDataCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      TicketResponse ticketResponse,
      UpdateTicketResponse updateTicketResponse,
      String typePriority,
      String ticketTitle});
}

/// @nodoc
class _$SupportTicketStateDataCopyWithImpl<$Res>
    implements $SupportTicketStateDataCopyWith<$Res> {
  _$SupportTicketStateDataCopyWithImpl(this._value, this._then);

  final SupportTicketStateData _value;
  // ignore: unused_field
  final $Res Function(SupportTicketStateData) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object ticketResponse = freezed,
    Object updateTicketResponse = freezed,
    Object typePriority = freezed,
    Object ticketTitle = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      ticketResponse: ticketResponse == freezed
          ? _value.ticketResponse
          : ticketResponse as TicketResponse,
      updateTicketResponse: updateTicketResponse == freezed
          ? _value.updateTicketResponse
          : updateTicketResponse as UpdateTicketResponse,
      typePriority: typePriority == freezed
          ? _value.typePriority
          : typePriority as String,
      ticketTitle:
          ticketTitle == freezed ? _value.ticketTitle : ticketTitle as String,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res>
    implements $SupportTicketStateDataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      TicketResponse ticketResponse,
      UpdateTicketResponse updateTicketResponse,
      String typePriority,
      String ticketTitle});
}

/// @nodoc
class _$DataCopyWithImpl<$Res>
    extends _$SupportTicketStateDataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object isLoading = freezed,
    Object ticketResponse = freezed,
    Object updateTicketResponse = freezed,
    Object typePriority = freezed,
    Object ticketTitle = freezed,
  }) {
    return _then(Data(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      ticketResponse: ticketResponse == freezed
          ? _value.ticketResponse
          : ticketResponse as TicketResponse,
      updateTicketResponse: updateTicketResponse == freezed
          ? _value.updateTicketResponse
          : updateTicketResponse as UpdateTicketResponse,
      typePriority: typePriority == freezed
          ? _value.typePriority
          : typePriority as String,
      ticketTitle:
          ticketTitle == freezed ? _value.ticketTitle : ticketTitle as String,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data(
      {this.isLoading,
      this.ticketResponse,
      this.updateTicketResponse,
      this.typePriority,
      this.ticketTitle = ''})
      : assert(ticketTitle != null);

  @override
  final bool isLoading;
  @override
  final TicketResponse ticketResponse;
  @override
  final UpdateTicketResponse updateTicketResponse;
  @override
  final String typePriority;
  @JsonKey(defaultValue: '')
  @override
  final String ticketTitle;

  @override
  String toString() {
    return 'SupportTicketStateData(isLoading: $isLoading, ticketResponse: $ticketResponse, updateTicketResponse: $updateTicketResponse, typePriority: $typePriority, ticketTitle: $ticketTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.ticketResponse, ticketResponse) ||
                const DeepCollectionEquality()
                    .equals(other.ticketResponse, ticketResponse)) &&
            (identical(other.updateTicketResponse, updateTicketResponse) ||
                const DeepCollectionEquality().equals(
                    other.updateTicketResponse, updateTicketResponse)) &&
            (identical(other.typePriority, typePriority) ||
                const DeepCollectionEquality()
                    .equals(other.typePriority, typePriority)) &&
            (identical(other.ticketTitle, ticketTitle) ||
                const DeepCollectionEquality()
                    .equals(other.ticketTitle, ticketTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(ticketResponse) ^
      const DeepCollectionEquality().hash(updateTicketResponse) ^
      const DeepCollectionEquality().hash(typePriority) ^
      const DeepCollectionEquality().hash(ticketTitle);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);
}

abstract class Data implements SupportTicketStateData {
  const factory Data(
      {bool isLoading,
      TicketResponse ticketResponse,
      UpdateTicketResponse updateTicketResponse,
      String typePriority,
      String ticketTitle}) = _$Data;

  @override
  bool get isLoading;
  @override
  TicketResponse get ticketResponse;
  @override
  UpdateTicketResponse get updateTicketResponse;
  @override
  String get typePriority;
  @override
  String get ticketTitle;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
class _$SupportTicketStateTearOff {
  const _$SupportTicketStateTearOff();

// ignore: unused_element
  Initial initial(Data data) {
    return Initial(
      data,
    );
  }

// ignore: unused_element
  Loading loading(Data data) {
    return Loading(
      data,
    );
  }

// ignore: unused_element
  GetTicketSuccessData getTicket(Data data) {
    return GetTicketSuccessData(
      data,
    );
  }

// ignore: unused_element
  UpdateTicketSuccessData updateTicket(Data data) {
    return UpdateTicketSuccessData(
      data,
    );
  }

// ignore: unused_element
  ChangeTypePriorityData changeTypePriority(Data data) {
    return ChangeTypePriorityData(
      data,
    );
  }

// ignore: unused_element
  ShowSendTicketModal showSendTicketModal(Data data) {
    return ShowSendTicketModal(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SupportTicketState = _$SupportTicketStateTearOff();

/// @nodoc
mixin _$SupportTicketState {
  Data get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult getTicket(Data data),
    @required TResult updateTicket(Data data),
    @required TResult changeTypePriority(Data data),
    @required TResult showSendTicketModal(Data data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult getTicket(Data data),
    TResult updateTicket(Data data),
    TResult changeTypePriority(Data data),
    TResult showSendTicketModal(Data data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult getTicket(GetTicketSuccessData value),
    @required TResult updateTicket(UpdateTicketSuccessData value),
    @required TResult changeTypePriority(ChangeTypePriorityData value),
    @required TResult showSendTicketModal(ShowSendTicketModal value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult getTicket(GetTicketSuccessData value),
    TResult updateTicket(UpdateTicketSuccessData value),
    TResult changeTypePriority(ChangeTypePriorityData value),
    TResult showSendTicketModal(ShowSendTicketModal value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $SupportTicketStateCopyWith<SupportTicketState> get copyWith;
}

/// @nodoc
abstract class $SupportTicketStateCopyWith<$Res> {
  factory $SupportTicketStateCopyWith(
          SupportTicketState value, $Res Function(SupportTicketState) then) =
      _$SupportTicketStateCopyWithImpl<$Res>;
  $Res call({Data data});
}

/// @nodoc
class _$SupportTicketStateCopyWithImpl<$Res>
    implements $SupportTicketStateCopyWith<$Res> {
  _$SupportTicketStateCopyWithImpl(this._value, this._then);

  final SupportTicketState _value;
  // ignore: unused_field
  final $Res Function(SupportTicketState) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res>
    implements $SupportTicketStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SupportTicketStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Initial(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'SupportTicketState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult getTicket(Data data),
    @required TResult updateTicket(Data data),
    @required TResult changeTypePriority(Data data),
    @required TResult showSendTicketModal(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(getTicket != null);
    assert(updateTicket != null);
    assert(changeTypePriority != null);
    assert(showSendTicketModal != null);
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult getTicket(Data data),
    TResult updateTicket(Data data),
    TResult changeTypePriority(Data data),
    TResult showSendTicketModal(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult getTicket(GetTicketSuccessData value),
    @required TResult updateTicket(UpdateTicketSuccessData value),
    @required TResult changeTypePriority(ChangeTypePriorityData value),
    @required TResult showSendTicketModal(ShowSendTicketModal value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(getTicket != null);
    assert(updateTicket != null);
    assert(changeTypePriority != null);
    assert(showSendTicketModal != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult getTicket(GetTicketSuccessData value),
    TResult updateTicket(UpdateTicketSuccessData value),
    TResult changeTypePriority(ChangeTypePriorityData value),
    TResult showSendTicketModal(ShowSendTicketModal value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SupportTicketState {
  const factory Initial(Data data) = _$Initial;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $SupportTicketStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$SupportTicketStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Loading(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'SupportTicketState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult getTicket(Data data),
    @required TResult updateTicket(Data data),
    @required TResult changeTypePriority(Data data),
    @required TResult showSendTicketModal(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(getTicket != null);
    assert(updateTicket != null);
    assert(changeTypePriority != null);
    assert(showSendTicketModal != null);
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult getTicket(Data data),
    TResult updateTicket(Data data),
    TResult changeTypePriority(Data data),
    TResult showSendTicketModal(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult getTicket(GetTicketSuccessData value),
    @required TResult updateTicket(UpdateTicketSuccessData value),
    @required TResult changeTypePriority(ChangeTypePriorityData value),
    @required TResult showSendTicketModal(ShowSendTicketModal value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(getTicket != null);
    assert(updateTicket != null);
    assert(changeTypePriority != null);
    assert(showSendTicketModal != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult getTicket(GetTicketSuccessData value),
    TResult updateTicket(UpdateTicketSuccessData value),
    TResult changeTypePriority(ChangeTypePriorityData value),
    TResult showSendTicketModal(ShowSendTicketModal value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SupportTicketState {
  const factory Loading(Data data) = _$Loading;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith;
}

/// @nodoc
abstract class $GetTicketSuccessDataCopyWith<$Res>
    implements $SupportTicketStateCopyWith<$Res> {
  factory $GetTicketSuccessDataCopyWith(GetTicketSuccessData value,
          $Res Function(GetTicketSuccessData) then) =
      _$GetTicketSuccessDataCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$GetTicketSuccessDataCopyWithImpl<$Res>
    extends _$SupportTicketStateCopyWithImpl<$Res>
    implements $GetTicketSuccessDataCopyWith<$Res> {
  _$GetTicketSuccessDataCopyWithImpl(
      GetTicketSuccessData _value, $Res Function(GetTicketSuccessData) _then)
      : super(_value, (v) => _then(v as GetTicketSuccessData));

  @override
  GetTicketSuccessData get _value => super._value as GetTicketSuccessData;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(GetTicketSuccessData(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$GetTicketSuccessData implements GetTicketSuccessData {
  const _$GetTicketSuccessData(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'SupportTicketState.getTicket(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetTicketSuccessData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $GetTicketSuccessDataCopyWith<GetTicketSuccessData> get copyWith =>
      _$GetTicketSuccessDataCopyWithImpl<GetTicketSuccessData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult getTicket(Data data),
    @required TResult updateTicket(Data data),
    @required TResult changeTypePriority(Data data),
    @required TResult showSendTicketModal(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(getTicket != null);
    assert(updateTicket != null);
    assert(changeTypePriority != null);
    assert(showSendTicketModal != null);
    return getTicket(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult getTicket(Data data),
    TResult updateTicket(Data data),
    TResult changeTypePriority(Data data),
    TResult showSendTicketModal(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getTicket != null) {
      return getTicket(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult getTicket(GetTicketSuccessData value),
    @required TResult updateTicket(UpdateTicketSuccessData value),
    @required TResult changeTypePriority(ChangeTypePriorityData value),
    @required TResult showSendTicketModal(ShowSendTicketModal value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(getTicket != null);
    assert(updateTicket != null);
    assert(changeTypePriority != null);
    assert(showSendTicketModal != null);
    return getTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult getTicket(GetTicketSuccessData value),
    TResult updateTicket(UpdateTicketSuccessData value),
    TResult changeTypePriority(ChangeTypePriorityData value),
    TResult showSendTicketModal(ShowSendTicketModal value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getTicket != null) {
      return getTicket(this);
    }
    return orElse();
  }
}

abstract class GetTicketSuccessData implements SupportTicketState {
  const factory GetTicketSuccessData(Data data) = _$GetTicketSuccessData;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $GetTicketSuccessDataCopyWith<GetTicketSuccessData> get copyWith;
}

/// @nodoc
abstract class $UpdateTicketSuccessDataCopyWith<$Res>
    implements $SupportTicketStateCopyWith<$Res> {
  factory $UpdateTicketSuccessDataCopyWith(UpdateTicketSuccessData value,
          $Res Function(UpdateTicketSuccessData) then) =
      _$UpdateTicketSuccessDataCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$UpdateTicketSuccessDataCopyWithImpl<$Res>
    extends _$SupportTicketStateCopyWithImpl<$Res>
    implements $UpdateTicketSuccessDataCopyWith<$Res> {
  _$UpdateTicketSuccessDataCopyWithImpl(UpdateTicketSuccessData _value,
      $Res Function(UpdateTicketSuccessData) _then)
      : super(_value, (v) => _then(v as UpdateTicketSuccessData));

  @override
  UpdateTicketSuccessData get _value => super._value as UpdateTicketSuccessData;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(UpdateTicketSuccessData(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$UpdateTicketSuccessData implements UpdateTicketSuccessData {
  const _$UpdateTicketSuccessData(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'SupportTicketState.updateTicket(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateTicketSuccessData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $UpdateTicketSuccessDataCopyWith<UpdateTicketSuccessData> get copyWith =>
      _$UpdateTicketSuccessDataCopyWithImpl<UpdateTicketSuccessData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult getTicket(Data data),
    @required TResult updateTicket(Data data),
    @required TResult changeTypePriority(Data data),
    @required TResult showSendTicketModal(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(getTicket != null);
    assert(updateTicket != null);
    assert(changeTypePriority != null);
    assert(showSendTicketModal != null);
    return updateTicket(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult getTicket(Data data),
    TResult updateTicket(Data data),
    TResult changeTypePriority(Data data),
    TResult showSendTicketModal(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateTicket != null) {
      return updateTicket(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult getTicket(GetTicketSuccessData value),
    @required TResult updateTicket(UpdateTicketSuccessData value),
    @required TResult changeTypePriority(ChangeTypePriorityData value),
    @required TResult showSendTicketModal(ShowSendTicketModal value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(getTicket != null);
    assert(updateTicket != null);
    assert(changeTypePriority != null);
    assert(showSendTicketModal != null);
    return updateTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult getTicket(GetTicketSuccessData value),
    TResult updateTicket(UpdateTicketSuccessData value),
    TResult changeTypePriority(ChangeTypePriorityData value),
    TResult showSendTicketModal(ShowSendTicketModal value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateTicket != null) {
      return updateTicket(this);
    }
    return orElse();
  }
}

abstract class UpdateTicketSuccessData implements SupportTicketState {
  const factory UpdateTicketSuccessData(Data data) = _$UpdateTicketSuccessData;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $UpdateTicketSuccessDataCopyWith<UpdateTicketSuccessData> get copyWith;
}

/// @nodoc
abstract class $ChangeTypePriorityDataCopyWith<$Res>
    implements $SupportTicketStateCopyWith<$Res> {
  factory $ChangeTypePriorityDataCopyWith(ChangeTypePriorityData value,
          $Res Function(ChangeTypePriorityData) then) =
      _$ChangeTypePriorityDataCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$ChangeTypePriorityDataCopyWithImpl<$Res>
    extends _$SupportTicketStateCopyWithImpl<$Res>
    implements $ChangeTypePriorityDataCopyWith<$Res> {
  _$ChangeTypePriorityDataCopyWithImpl(ChangeTypePriorityData _value,
      $Res Function(ChangeTypePriorityData) _then)
      : super(_value, (v) => _then(v as ChangeTypePriorityData));

  @override
  ChangeTypePriorityData get _value => super._value as ChangeTypePriorityData;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ChangeTypePriorityData(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$ChangeTypePriorityData implements ChangeTypePriorityData {
  const _$ChangeTypePriorityData(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'SupportTicketState.changeTypePriority(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeTypePriorityData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ChangeTypePriorityDataCopyWith<ChangeTypePriorityData> get copyWith =>
      _$ChangeTypePriorityDataCopyWithImpl<ChangeTypePriorityData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult getTicket(Data data),
    @required TResult updateTicket(Data data),
    @required TResult changeTypePriority(Data data),
    @required TResult showSendTicketModal(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(getTicket != null);
    assert(updateTicket != null);
    assert(changeTypePriority != null);
    assert(showSendTicketModal != null);
    return changeTypePriority(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult getTicket(Data data),
    TResult updateTicket(Data data),
    TResult changeTypePriority(Data data),
    TResult showSendTicketModal(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeTypePriority != null) {
      return changeTypePriority(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult getTicket(GetTicketSuccessData value),
    @required TResult updateTicket(UpdateTicketSuccessData value),
    @required TResult changeTypePriority(ChangeTypePriorityData value),
    @required TResult showSendTicketModal(ShowSendTicketModal value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(getTicket != null);
    assert(updateTicket != null);
    assert(changeTypePriority != null);
    assert(showSendTicketModal != null);
    return changeTypePriority(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult getTicket(GetTicketSuccessData value),
    TResult updateTicket(UpdateTicketSuccessData value),
    TResult changeTypePriority(ChangeTypePriorityData value),
    TResult showSendTicketModal(ShowSendTicketModal value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeTypePriority != null) {
      return changeTypePriority(this);
    }
    return orElse();
  }
}

abstract class ChangeTypePriorityData implements SupportTicketState {
  const factory ChangeTypePriorityData(Data data) = _$ChangeTypePriorityData;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $ChangeTypePriorityDataCopyWith<ChangeTypePriorityData> get copyWith;
}

/// @nodoc
abstract class $ShowSendTicketModalCopyWith<$Res>
    implements $SupportTicketStateCopyWith<$Res> {
  factory $ShowSendTicketModalCopyWith(
          ShowSendTicketModal value, $Res Function(ShowSendTicketModal) then) =
      _$ShowSendTicketModalCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$ShowSendTicketModalCopyWithImpl<$Res>
    extends _$SupportTicketStateCopyWithImpl<$Res>
    implements $ShowSendTicketModalCopyWith<$Res> {
  _$ShowSendTicketModalCopyWithImpl(
      ShowSendTicketModal _value, $Res Function(ShowSendTicketModal) _then)
      : super(_value, (v) => _then(v as ShowSendTicketModal));

  @override
  ShowSendTicketModal get _value => super._value as ShowSendTicketModal;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ShowSendTicketModal(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$ShowSendTicketModal implements ShowSendTicketModal {
  const _$ShowSendTicketModal(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'SupportTicketState.showSendTicketModal(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowSendTicketModal &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ShowSendTicketModalCopyWith<ShowSendTicketModal> get copyWith =>
      _$ShowSendTicketModalCopyWithImpl<ShowSendTicketModal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult getTicket(Data data),
    @required TResult updateTicket(Data data),
    @required TResult changeTypePriority(Data data),
    @required TResult showSendTicketModal(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(getTicket != null);
    assert(updateTicket != null);
    assert(changeTypePriority != null);
    assert(showSendTicketModal != null);
    return showSendTicketModal(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult getTicket(Data data),
    TResult updateTicket(Data data),
    TResult changeTypePriority(Data data),
    TResult showSendTicketModal(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showSendTicketModal != null) {
      return showSendTicketModal(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult getTicket(GetTicketSuccessData value),
    @required TResult updateTicket(UpdateTicketSuccessData value),
    @required TResult changeTypePriority(ChangeTypePriorityData value),
    @required TResult showSendTicketModal(ShowSendTicketModal value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(getTicket != null);
    assert(updateTicket != null);
    assert(changeTypePriority != null);
    assert(showSendTicketModal != null);
    return showSendTicketModal(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult getTicket(GetTicketSuccessData value),
    TResult updateTicket(UpdateTicketSuccessData value),
    TResult changeTypePriority(ChangeTypePriorityData value),
    TResult showSendTicketModal(ShowSendTicketModal value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showSendTicketModal != null) {
      return showSendTicketModal(this);
    }
    return orElse();
  }
}

abstract class ShowSendTicketModal implements SupportTicketState {
  const factory ShowSendTicketModal(Data data) = _$ShowSendTicketModal;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $ShowSendTicketModalCopyWith<ShowSendTicketModal> get copyWith;
}
