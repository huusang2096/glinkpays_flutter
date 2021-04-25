part of 'languages_cubit.dart';

class LanguagesState {
  bool isLoading;

  LanguagesState({this.isLoading});

  LanguagesState copyWith({bool isLoading}) {
    return LanguagesState(
      isLoading: isLoading ?? this.isLoading,
    );
  }

  LanguagesState.from(LanguagesState state) {
    isLoading = state.isLoading;
  }
}

class LanguagesInitial extends LanguagesState {
  LanguagesInitial() : super(isLoading: false);
}

class LanguagesUpdateSuccessState extends LanguagesState {}
