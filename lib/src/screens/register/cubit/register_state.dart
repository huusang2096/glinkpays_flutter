part of 'register_cubit.dart';

class RegisterState {
  TypeUser typeUser;
  bool isLoading;
  RegisterState(this.typeUser, this.isLoading);
  RegisterState copyWith({TypeUser typeUser, bool isLoading}) {
    return RegisterState(
        typeUser ?? this.typeUser, isLoading ?? this.isLoading);
  }
}

class RegisterInitial extends RegisterState {
  RegisterInitial() : super(TypeUser(), false);
}

class ChangeTypeUserRegister extends RegisterState {
  ChangeTypeUserRegister(TypeUser typeUser, RegisterState state)
      : super(typeUser, state.isLoading);
}
