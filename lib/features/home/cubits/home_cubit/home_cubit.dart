import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:nafa7at/core/errors/failures.dart';
import 'package:nafa7at/core/util/enums.dart';
import 'package:nafa7at/features/home/data/models/mawa3id_salah/date_model.dart';
import 'package:nafa7at/features/home/data/models/mawa3id_salah/mawa3id_salah_model.dart';
import 'package:nafa7at/features/home/data/models/mawa3id_salah/prayer_times_model.dart';
import 'package:nafa7at/features/home/data/repositories/home_repository/home_repository.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final HomeRepository _homeRepository;
  HomeCubit(this._homeRepository) : super(HomeState());

  Future<void> getPrayerTimes() async {
    emit(state.copyWith(prayerTimesState: BlocState.loading));

    Either<Failure, Mawa3idSalahModel> result =
        await _homeRepository.getPrayerTimes();

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            errorMessage: failure.message,
            prayerTimesState: BlocState.failure,
          ),
        );
        debugPrint("${failure.message} &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
      },
      (prayerTimes) {
        emit(
          state.copyWith(
            mawa3idSalahModel: prayerTimes,
            prayerTimesState: BlocState.success,
          ),
        );
      },
    );
  }
}
