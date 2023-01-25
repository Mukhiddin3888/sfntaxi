part of 'profile_bloc.dart';

@immutable
@freezed
abstract class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState({
    @Default(null) MeUserModel? meUserModel,
  }) = _ProfileState;
}
