part of 'trip_bloc.dart';

@immutable
@freezed
abstract class TripEvent with _$TripEvent {

  const factory TripEvent.getRegions( ) = _GetRegions;

  const factory TripEvent.searchTrip( {
    required int startLocationId,
    required int endLocationId,
    required int isPostal,
    required int isPassenger,
  }) = _SearchTrip;

}
