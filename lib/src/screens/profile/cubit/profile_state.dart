part of 'profile_cubit.dart';

class ProfileState {
  UserResponse profileResponse;
  ProfileRequest profileRequest;
  ProfileRequestImg profileRequestImg;
  bool isLoading;
  double verifyProcessPercent;

  ProfileState({
    this.profileResponse,
    this.profileRequest,
    this.profileRequestImg,
    this.isLoading,
    this.verifyProcessPercent = 0.0,
  });

  ProfileState.from({ProfileState state}) {
    profileResponse = state.profileResponse;
    profileRequest = state.profileRequest;
    profileRequestImg = state.profileRequestImg;
    isLoading = state.isLoading;
    verifyProcessPercent = state.verifyProcessPercent;
  }

  ProfileState copyWith({
    UserResponse profileResponse,
    ProfileRequest profileRequest,
    ProfileRequestImg profileRequestImg,
    bool isLoading,
    double verifyProcessPercent,
  }) {
    return ProfileState(
      profileResponse: profileResponse ?? this.profileResponse,
      profileRequest: profileRequest ?? this.profileRequest,
      profileRequestImg: profileRequestImg ?? this.profileRequestImg,
      isLoading: isLoading ?? this.isLoading,
      verifyProcessPercent: verifyProcessPercent ?? this.verifyProcessPercent,
    );
  }
}

class ProfileInitial extends ProfileState {
  ProfileInitial()
      : super(
          profileResponse: null,
          profileRequest: ProfileRequest(gender: 'male'),
          profileRequestImg: null,
          isLoading: false,
        );
}

class GetProfileSuccessState extends ProfileState {
  GetProfileSuccessState({
    UserResponse profileResponse,
    double verifyProcessPercent,
    ProfileState state,
  }) : super(
          profileResponse: profileResponse,
          profileRequest: state.profileRequest,
          profileRequestImg: state.profileRequestImg,
          verifyProcessPercent: state.verifyProcessPercent,
          isLoading: state.isLoading,
        );
}

class UpdateProfileSuccessState extends ProfileState {
  UpdateProfileSuccessState({UserResponse profileResponse, ProfileState state})
      : super(
          profileResponse: profileResponse,
          profileRequest: state.profileRequest,
          profileRequestImg: state.profileRequestImg,
          isLoading: state.isLoading,
        );
}

class LogoutSuccessState extends ProfileState {
  LogoutSuccessState({ProfileState state})
      : super(
          profileRequest: state.profileRequest,
          profileResponse: state.profileResponse,
          profileRequestImg: state.profileRequestImg,
          isLoading: state.isLoading,
        );
}

class ProfileUpdateImgState extends ProfileState {
  ProfileUpdateImgState(ProfileRequestImg profileRequestImg, ProfileState state)
      : super(
          profileRequest: state.profileRequest,
          profileResponse: state.profileResponse,
          profileRequestImg: profileRequestImg,
          isLoading: state.isLoading,
        );
}

class ProfileUpdateState extends ProfileState {
  ProfileUpdateState(ProfileRequest profileRequest, ProfileState state)
      : super(
          profileRequest: profileRequest,
          profileResponse: state.profileResponse,
          profileRequestImg: state.profileRequestImg,
          isLoading: state.isLoading,
        );
}
