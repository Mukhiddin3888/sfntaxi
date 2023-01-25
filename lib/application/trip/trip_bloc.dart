import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


import '../../domain/trip/i_trip_facade.dart';
import '../../infrastructure/models/trip/regions.dart';
import '../../infrastructure/models/trip/trip.dart';


part 'trip_event.dart';

part 'trip_state.dart';

part 'trip_bloc.freezed.dart';

class TripBloc extends Bloc<TripEvent, TripState> {
  final ITripFacade _tripRepo;

  TripBloc(this._tripRepo) : super(const _TripState()) {
    on<_GetRegions>(_getRegions);
    on<_SearchTrip>(_searchTrip);
  }


  FutureOr<void> _getRegions(
      _GetRegions event, Emitter<TripState> emit) async {
    EasyLoading.show();

    final res = await _tripRepo.getRegions();

    res.fold((l) {
      EasyLoading.showError(l.message);
    }, (r) {
      if(r.success!){
          emit(state.copyWith(regionsModel: r.data?.regions?.toList() ?? []));
          EasyLoading.dismiss();

      }else{
        EasyLoading.showError('${r.error?.message}');

      }

    });
  }


  FutureOr<void> _searchTrip(
      _SearchTrip event, Emitter<TripState> emit) async {
    EasyLoading.show();

    final res = await _tripRepo.searchTrip(
        startLocationId: event.startLocationId, endLocationId: event.endLocationId,
        isPostal: event.isPostal, isPassenger: event.isPassenger);

    res.fold((l) {
      EasyLoading.showError(l.message);
    }, (r) {
      if(r.success!){
          emit(state.copyWith(tripsDataList: r.data?.trips?.toList() ?? []));
          EasyLoading.dismiss();


      }else{
        EasyLoading.showError('${r.error?.message}');

      }

    });
  }

}
