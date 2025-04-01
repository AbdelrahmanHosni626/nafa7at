part of 'home_cubit.dart';

class HomeState extends Equatable {
  final BlocState prayerTimesState;
  final Mawa3idSalahModel mawa3idSalahModel;
  final String errorMessage;

  const HomeState({
    this.prayerTimesState = BlocState.initial,
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
  });

  HomeState copyWith({
    BlocState? prayerTimesState,
    Mawa3idSalahModel? mawa3idSalahModel,
    String? errorMessage,
  }) {
    return HomeState(
      prayerTimesState: prayerTimesState ?? this.prayerTimesState,
      mawa3idSalahModel: mawa3idSalahModel ?? this.mawa3idSalahModel,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [prayerTimesState, mawa3idSalahModel, errorMessage];
}
