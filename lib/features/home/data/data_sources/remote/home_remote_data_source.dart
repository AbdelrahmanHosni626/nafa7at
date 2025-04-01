import 'package:nafa7at/features/home/data/models/mawa3id_salah/mawa3id_salah_model.dart';

abstract class HomeRemoteDataSource {
  Future<Mawa3idSalahModel> getPrayerTimes();
}
