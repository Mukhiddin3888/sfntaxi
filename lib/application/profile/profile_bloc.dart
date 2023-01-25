import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/profile/i_profile_facade.dart';
import '../../infrastructure/models/me/me.dart';


part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileFacade _profileRepo;

  ProfileBloc(this._profileRepo) : super(const _ProfileState()) {
    on<_GetMe>(_getMe);
  }


  FutureOr<void> _getMe(
      _GetMe event, Emitter<ProfileState> emit) async {
    EasyLoading.show();

    final res = await _profileRepo.getMe();

    res.fold((l) {
      EasyLoading.showError(l.message);
    }, (r) {
      if(r.success!){
        emit(state.copyWith(meUserModel: r.data?.user));
        EasyLoading.dismiss();
      }else{
        EasyLoading.showError('${r.error?.message}');

      }

    });
  }

}
