part of 'trip_bloc.dart';

@immutable
@freezed
abstract class TripState with _$TripState {
  const TripState._();

  const factory TripState({
    @Default([]) List<RegionsDataResModel?>? regionsModel,
    @Default([]) List<TripsModel?>? tripsDataList,
  }) = _TripState;
}
