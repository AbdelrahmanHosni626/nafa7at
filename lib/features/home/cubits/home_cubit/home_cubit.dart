import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:nafa7at/core/errors/failures.dart';
import 'package:nafa7at/core/util/enums.dart';
import 'package:nafa7at/features/home/data/models/azkar_model.dart';
import 'package:nafa7at/features/home/data/models/mawa3id_salah/date_model.dart';
import 'package:nafa7at/features/home/data/models/mawa3id_salah/mawa3id_salah_model.dart';
import 'package:nafa7at/features/home/data/models/mawa3id_salah/prayer_times_model.dart';
import 'package:nafa7at/features/home/data/models/quran/quran_model.dart';
import 'package:nafa7at/features/home/data/models/quran/quran_pages_model.dart';
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

  Future<void> getSuraList() async {
    emit(state.copyWith(suraListState: BlocState.loading));

    Either<Failure, List<QuranModel>> result =
        await _homeRepository.getSuraList();

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            errorMessage: failure.message,
            suraListState: BlocState.failure,
          ),
        );
        debugPrint("${failure.message} &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
      },
      (suraList) {
        emit(
          state.copyWith(
            quranModel: suraList,
            suraListState: BlocState.success,
          ),
        );
      },
    );
  }

  Future<void> getQuranPagesList() async {
    emit(state.copyWith(quranPagesListState: BlocState.loading));

    Either<Failure, QuranPagesModel> result =
        await _homeRepository.getQuranPagesList();

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            errorMessage: failure.message,
            quranPagesListState: BlocState.failure,
          ),
        );
        debugPrint("${failure.message} &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
      },
      (quranPagesList) {
        emit(
          state.copyWith(
            quranPagesList: quranPagesList,
            quranPagesListState: BlocState.success,
          ),
        );
      },
    );
  }

  Future<void> getAzkarList() async {
    emit(state.copyWith(azkarListState: BlocState.loading));

    Either<Failure, AzkarModel> result = await _homeRepository.getAzkarList();

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            errorMessage: failure.message,
            azkarListState: BlocState.failure,
          ),
        );
        debugPrint("${failure.message} &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
      },
      (azkarList) {
        emit(
          state.copyWith(
            azkarList: azkarList,
            azkarListState: BlocState.success,
          ),
        );
      },
    );
  }
}
