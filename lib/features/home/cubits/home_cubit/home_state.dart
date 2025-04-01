part of 'home_cubit.dart';

class HomeState extends Equatable {
  // States
  final BlocState prayerTimesState;
  final BlocState suraListState;

  // Data
  final Mawa3idSalahModel mawa3idSalahModel;
  final List<QuranModel> quranModel;
  final String errorMessage;

  const HomeState({
    this.prayerTimesState = BlocState.initial,
    this.suraListState = BlocState.initial,
    this.errorMessage = "",
    this.mawa3idSalahModel = const Mawa3idSalahModel(
      region: '',
      country: '',
      prayerTimes: PrayerTimes(
        fajr: "",
        sunrise: "",
        dhuhr: "",
        asr: "",
        maghrib: "",
        isha: "",
      ),
      date: Date(
        dateEn: "",
        dateHijri: DateHijri(
          date: "",
          format: "",
          day: "",
          weekday: Weekday(en: "", ar: ""),
          month: Month(number: 0, en: "", ar: "", days: 0),
          year: "",
          designation: Designation(abbreviated: "", expanded: ""),
          holidays: [],
          adjustedHolidays: [],
          method: "",
        ),
      ),
      meta: Meta(timezone: ""),
    ),
    this.quranModel = const [],
  });

  HomeState copyWith({
    BlocState? prayerTimesState,
    BlocState? suraListState,
    Mawa3idSalahModel? mawa3idSalahModel,
    List<QuranModel>? quranModel,
    String? errorMessage,
  }) {
    return HomeState(
      prayerTimesState: prayerTimesState ?? this.prayerTimesState,
      suraListState: suraListState ?? this.suraListState,
      mawa3idSalahModel: mawa3idSalahModel ?? this.mawa3idSalahModel,
      quranModel: quranModel ?? this.quranModel,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [
    prayerTimesState,
    suraListState,
    mawa3idSalahModel,
    quranModel,
    errorMessage,
  ];
}
