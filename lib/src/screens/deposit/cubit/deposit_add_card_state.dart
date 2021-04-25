part of 'deposit_add_card_cubit.dart';

class DepositAddCardState {
  bool isShowBackCard;

  DepositAddCardState(this.isShowBackCard);

  DepositAddCardState.fromState(DepositAddCardState state,
      {bool isShowBackCard}) {
    this.isShowBackCard = isShowBackCard ?? state.isShowBackCard;
  }
}

class DepositAddCardInitial extends DepositAddCardState {
  DepositAddCardInitial() : super(false);
}
