part of 'transfer_select_user_cubit.dart';

class TransferSelectUserState {
  SearchResponse searchResponse;
  bool isLoading;
  bool changeSuffixIcon;
  List<Contact> listContact;
  PermissionStatus permissionStatus;
  int currentPage;
  String currentSearchContent;
  bool hasReachedSearch;
  bool isLoadingScaffold;
  bool checkLogin;

  TransferSelectUserState(
      this.searchResponse,
      this.isLoading,
      this.changeSuffixIcon,
      this.listContact,
      this.permissionStatus,
      this.currentPage,
      this.currentSearchContent,
      this.hasReachedSearch,
      this.isLoadingScaffold,
      this.checkLogin);

  TransferSelectUserState.copyWith(
      {SearchResponse searchResponse,
      bool isLoading,
      bool changeSuffixIcon,
      List<Contact> listContact,
      PermissionStatus permissionStatus,
      int currentPage,
      String currentSearchContent,
      bool hasReachedSearch,
      bool isLoadingScaffold,
      bool checkLogin,
      TransferSelectUserState state}) {
    this.searchResponse = searchResponse ?? state.searchResponse;
    this.changeSuffixIcon = changeSuffixIcon ?? state.changeSuffixIcon;
    this.isLoading = isLoading ?? state.isLoading;
    this.listContact = listContact ?? state.listContact;
    this.permissionStatus = permissionStatus ?? state.permissionStatus;
    this.currentPage = currentPage ?? state.currentPage;
    this.currentSearchContent =
        currentSearchContent ?? state.currentSearchContent;
    this.hasReachedSearch = hasReachedSearch ?? state.hasReachedSearch;
    this.isLoadingScaffold = isLoadingScaffold ?? state.isLoadingScaffold;
    this.checkLogin = checkLogin ?? state.checkLogin;
  }

  TransferSelectUserState.fromState({TransferSelectUserState state}) {
    searchResponse = state.searchResponse;
    isLoading = state.isLoading;
    changeSuffixIcon = state.changeSuffixIcon;
    listContact = state.listContact;
    permissionStatus = state.permissionStatus;
    currentPage = state.currentPage;
    currentSearchContent = state.currentSearchContent;
    hasReachedSearch = state.hasReachedSearch;
    isLoadingScaffold = state.isLoadingScaffold;
    checkLogin = state.checkLogin;
  }
}

class TransferSelectUserInitial extends TransferSelectUserState {
  TransferSelectUserInitial()
      : super(null, false, false, null, null, 1, '', false, false, false);
}

class TransferSelectUserSearchUser extends TransferSelectUserState {
  TransferSelectUserSearchUser(
      SearchResponse searchResponse,
      int currentPage,
      String currentSearchContent,
      bool hasReached,
      TransferSelectUserState state)
      : super(
            searchResponse,
            state.isLoading,
            state.changeSuffixIcon,
            state.listContact,
            state.permissionStatus,
            currentPage,
            currentSearchContent,
            hasReached,
            state.isLoadingScaffold,
            state.checkLogin);
}

class TransferChangeLoading extends TransferSelectUserState {
  TransferChangeLoading(bool isLoading, TransferSelectUserState state)
      : super.copyWith(isLoading: isLoading, state: state);
}

class TransferChangeSuffixIcon extends TransferSelectUserState {
  TransferChangeSuffixIcon(bool changeSuffixIcon, TransferSelectUserState state)
      : super.copyWith(changeSuffixIcon: changeSuffixIcon, state: state);
}

class TransferSelectUserFetchContact extends TransferSelectUserState {
  TransferSelectUserFetchContact(List<Contact> listContact,
      PermissionStatus permissionStatus, TransferSelectUserState state)
      : super.copyWith(
            state: state,
            listContact: listContact,
            permissionStatus: permissionStatus);
}

class TransferLoadMoreError extends TransferSelectUserState {
  TransferLoadMoreError(TransferSelectUserState state)
      : super.fromState(state: state);
}

class TransferChangeHasReached extends TransferSelectUserState {
  TransferChangeHasReached(bool hasReached, TransferSelectUserState state)
      : super.copyWith(state: state, hasReachedSearch: hasReached);
}

class TransferChangeIsLoadingScaffold extends TransferSelectUserState {
  TransferChangeIsLoadingScaffold(
      bool isLoadingScaffold, TransferSelectUserState state)
      : super.copyWith(state: state, isLoadingScaffold: isLoadingScaffold);
}

class TransferSelectUserCheckLogin extends TransferSelectUserState {
  TransferSelectUserCheckLogin(bool checkLogin, TransferSelectUserState state)
      : super.copyWith(checkLogin: checkLogin, state: state);
}
