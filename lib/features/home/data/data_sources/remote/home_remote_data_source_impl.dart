import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nafa7at/core/api/api_consumer.dart';
import 'package:nafa7at/core/constants/api_constants.dart';
import 'package:nafa7at/core/errors/exceptions.dart';
import 'package:nafa7at/core/util/model_manager.dart';
import 'package:nafa7at/features/home/data/data_sources/remote/home_remote_data_source.dart';
import 'package:nafa7at/features/home/data/models/mawa3id_salah/mawa3id_salah_model.dart';
import 'package:nafa7at/features/home/data/models/quran/quran_model.dart';
import 'package:nafa7at/features/home/data/models/quran/quran_pages_model.dart';

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiConsumer _apiConsumer;

  HomeRemoteDataSourceImpl(this._apiConsumer);

  @override
  Future<Mawa3idSalahModel> getPrayerTimes() async {
    final response = await _apiConsumer.get(ApiConstants.prayerTimes);
    try {
      final mawa3idSalah = Mawa3idSalahModel.fromJson(response);

      return mawa3idSalah;
    } on DioException catch (error) {
      throw ServerException(error.message);
    }
  }

  @override
  Future<List<QuranModel>> getSuraList() async {
    final response = await _apiConsumer.get(ApiConstants.surahList);
    try {
      final suraList = ModelManager.toSuraList(response);

      return suraList;
    } on DioException catch (error) {
      throw ServerException(error.message);
    }
  }

  @override
  Future<List<QuranPagesModel>> getQuranPagesList() async {
    final response = await _apiConsumer.get(ApiConstants.quranPages);
    try {
      final quranPagesList = ModelManager.toQuranPagesList(response);

      return quranPagesList;
    } on DioException catch (error) {
      throw ServerException(error.message);
    }
  }
}
