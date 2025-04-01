import 'package:nafa7at/features/home/data/models/quran/quran_model.dart';

class ModelManager {
  static List<QuranModel> toSuraList(List<dynamic> list) =>
      list.map<QuranModel>((json) => QuranModel.fromJson(json)).toList();
}
