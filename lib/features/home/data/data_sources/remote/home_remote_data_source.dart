import 'package:nafa7at/features/home/data/models/azkar_model.dart';
import 'package:nafa7at/features/home/data/models/mawa3id_salah/mawa3id_salah_model.dart';
import 'package:nafa7at/features/home/data/models/quran/quran_model.dart';
import 'package:nafa7at/features/home/data/models/quran/quran_pages_model.dart';

abstract class HomeRemoteDataSource {
  Future<Mawa3idSalahModel> getPrayerTimes();
  Future<List<QuranModel>> getSuraList();
  Future<QuranPagesModel> getQuranPagesList();
  Future<AzkarModel> getAzkarList();
}
