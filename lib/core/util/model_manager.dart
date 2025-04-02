import 'package:nafa7at/features/home/data/models/quran/quran_model.dart';
import 'package:nafa7at/features/home/data/models/quran/quran_pages_model.dart';

class ModelManager {
  static List<QuranModel> toSuraList(List<dynamic> list) =>
      list.map<QuranModel>((json) => QuranModel.fromJson(json)).toList();

  static List<QuranPagesModel> toQuranPagesList(List<dynamic> list) =>
      list
          .map<QuranPagesModel>((json) => QuranPagesModel.fromJson(json))
          .toList();
}
