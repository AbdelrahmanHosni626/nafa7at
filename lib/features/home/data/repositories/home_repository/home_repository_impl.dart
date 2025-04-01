import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nafa7at/core/errors/exceptions.dart';
import 'package:nafa7at/core/errors/failures.dart';
import 'package:nafa7at/features/home/data/data_sources/remote/home_remote_data_source.dart';
import 'package:nafa7at/features/home/data/models/mawa3id_salah/mawa3id_salah_model.dart';
import 'package:nafa7at/features/home/data/models/quran/quran_model.dart';
import 'package:nafa7at/features/home/data/repositories/home_repository/home_repository.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDataSource _remoteDatasource;

  HomeRepositoryImpl(this._remoteDatasource);
  @override
  Future<Either<Failure, Mawa3idSalahModel>> getPrayerTimes() async {
    try {
      Mawa3idSalahModel prayerTimes = await _remoteDatasource.getPrayerTimes();

      return Right(prayerTimes);
    } on ServerException catch (exception) {
      return Left(ApiFailure(exception.message!));
    }
  }

  @override
  Future<Either<Failure, List<QuranModel>>> getSuraList() async {
    try {
      List<QuranModel> suraList = await _remoteDatasource.getSuraList();

      return Right(suraList);
    } on ServerException catch (exception) {
      return Left(ApiFailure(exception.message!));
    }
  }
}
