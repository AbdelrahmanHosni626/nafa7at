part of 'home_cubit.dart';

class HomeState extends Equatable {
  // States
  final BlocState prayerTimesState;
  final BlocState suraListState;
  final BlocState quranPagesListState;
  final BlocState azkarListState;

  // Data
  final Mawa3idSalahModel mawa3idSalahModel;
  final List<QuranModel> quranModel;
  final QuranPagesModel quranPagesList;
  final AzkarModel azkarList;
  final String errorMessage;

  const HomeState({
    this.prayerTimesState = BlocState.initial,
    this.suraListState = BlocState.initial,
    this.quranPagesListState = BlocState.initial,
    this.azkarListState = BlocState.initial,
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
    this.quranPagesList = const QuranPagesModel(
      status: '',
      totalPages: 0,
      pages: [],
    ),
    this.azkarList = const AzkarModel(azkar: []),
  });

  HomeState copyWith({
    BlocState? prayerTimesState,
    BlocState? suraListState,
    BlocState? quranPagesListState,
    BlocState? azkarListState,
    Mawa3idSalahModel? mawa3idSalahModel,
    List<QuranModel>? quranModel,
    QuranPagesModel? quranPagesList,
    AzkarModel? azkarList,
    String? errorMessage,
  }) {
    return HomeState(
      prayerTimesState: prayerTimesState ?? this.prayerTimesState,
      suraListState: suraListState ?? this.suraListState,
      quranPagesListState: quranPagesListState ?? this.quranPagesListState,
      azkarListState: azkarListState ?? this.azkarListState,
      mawa3idSalahModel: mawa3idSalahModel ?? this.mawa3idSalahModel,
      quranModel: quranModel ?? this.quranModel,
      quranPagesList: quranPagesList ?? this.quranPagesList,
      azkarList: azkarList ?? this.azkarList,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [
    prayerTimesState,
    suraListState,
    quranPagesListState,
    azkarListState,
    mawa3idSalahModel,
    quranModel,
    quranPagesList,
    azkarList,
    errorMessage,
  ];
}
