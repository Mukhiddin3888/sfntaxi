part of 'profile_bloc.dart';

@immutable
@freezed
abstract class ProfileEvent with _$ProfileEvent {

  const factory ProfileEvent.getMe( ) = _GetMe;

}
