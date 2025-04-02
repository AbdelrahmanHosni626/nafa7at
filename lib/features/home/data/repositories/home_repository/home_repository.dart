import 'package:dartz/dartz.dart';
import 'package:nafa7at/core/errors/failures.dart';
import 'package:nafa7at/features/home/data/models/mawa3id_salah/mawa3id_salah_model.dart';
import 'package:nafa7at/features/home/data/models/quran/quran_model.dart';
import 'package:nafa7at/features/home/data/models/quran/quran_pages_model.dart';

abstract class HomeRepository {
  Future<Either<Failure, Mawa3idSalahModel>> getPrayerTimes();
  Future<Either<Failure, List<QuranModel>>> getSuraList();
  Future<Either<Failure, QuranPagesModel>> getQuranPagesList();
}
