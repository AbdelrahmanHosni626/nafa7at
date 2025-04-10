import 'package:nafa7at/core/util/assets_manager.dart';
import 'package:nafa7at/core/util/enums.dart';
import 'package:nafa7at/features/home/data/models/mawa3id_salah/prayer_times_model.dart';
import 'package:nafa7at/nafa7at_app.dart';
import 'package:nafa7at/settings/routes/app_routes.dart';

class HomeHelper {
  static final List<Map<String, dynamic>> items = [
    {
      "image": AssetsManager.quran,
      "title": Nafa7atApp.locale.quran,
      "route": QuranRoute(),
    },
    {
      "image": AssetsManager.azkarSalah,
      "title": Nafa7atApp.locale.azkarSalah,
      "route": AzkarSalahRoute(),
    },
    {
      "image": AssetsManager.azkarAfterSalah,
      "title": Nafa7atApp.locale.azkarAfterSalah,
      "route": AzkarAfterSalahRoute(),
    },
    {
      "image": AssetsManager.azkarSabah,
      "title": Nafa7atApp.locale.azkarSabah,
      "route": AzkarSabahRoute(),
    },
    {
      "image": AssetsManager.azkarMasa2,
      "title": Nafa7atApp.locale.azkarMasa2,
      "route": AzkarMasaaRoute(),
    },
    {
      "image": AssetsManager.azkarWakeup,
      "title": Nafa7atApp.locale.azkarWakeup,
      "route": AzkarWakeupRoute(),
    },
    {
      "image": AssetsManager.azkarSleep,
      "title": Nafa7atApp.locale.azkarSleep,
      "route": AzkarSleepRoute(),
    },
    {
      "image": AssetsManager.azkarMosque,
      "title": Nafa7atApp.locale.azkarMosque,
      "route": AzkarMosqueRoute(),
    },
    {
      "image": AssetsManager.azkarAzaan,
      "title": Nafa7atApp.locale.azkarAzaan,
      "route": AzkarAzaanRoute(),
    },
    {
      "image": AssetsManager.azkarWudu,
      "title": Nafa7atApp.locale.azkarWudu,
      "route": AzkarWuduRoute(),
    },
    {
      "image": AssetsManager.azkarHome,
      "title": Nafa7atApp.locale.azkarHome,
      "route": AzkarHomeRoute(),
    },
    {
      "image": AssetsManager.azkarFood,
      "title": Nafa7atApp.locale.azkarFood,
      "route": AzkarFoodRoute(),
    },
    {
      "image": AssetsManager.azkarHajjAndUmra,
      "title": Nafa7atApp.locale.azkarHajjAndUmra,
      "route": AzkarHajjAndUmraRoute(),
    },
    {
      "image": AssetsManager.azkarKhalaa,
      "title": Nafa7atApp.locale.azkarKhalaa,
      "route": AzkarKhalaaRoute(),
    },
    {
      "image": AssetsManager.azkarMotanwi3a,
      "title": Nafa7atApp.locale.azkarMotanwi3a,
      "route": AzkarMotanwi3aRoute(),
    },
    {
      "image": AssetsManager.tasbeh,
      "title": Nafa7atApp.locale.tasbeh,
      "route": TasbihRoute(),
    },
    /*{
      "image": AssetsManager.allAd3ia,
      "title": Nafa7atApp.locale.allAd3ia,
      "route": AllAd3iaRoute(),
    },*/
    {
      "image": AssetsManager.closestMosques,
      "title": Nafa7atApp.locale.qibla,
      "route": QiblaRoute(),
    },
    {
      "image": AssetsManager.quranLoading,
      "title": Nafa7atApp.locale.quranRadio,
      "route": QuranRadioRoute(),
    },
  ];

  static PrayerTime? getCurrentPrayerTime(
    DateTime now,
    PrayerTimes prayerTimes,
  ) {
    final currentHour = now.hour;
    final currentMinute = now.minute;
    final currentTotalMinutes = currentHour * 60 + currentMinute;

    // Helper function to parse prayer time strings like "04:14"
    int parsePrayerTime(String timeStr) {
      final parts = timeStr.split(':');
      final hour = int.parse(parts[0]);
      final minute = int.parse(parts[1]);
      return hour * 60 + minute;
    }

    final fajr = parsePrayerTime(prayerTimes.fajr);
    final sunrise = parsePrayerTime(prayerTimes.sunrise);
    final dhuhr = parsePrayerTime(prayerTimes.dhuhr);
    final asr = parsePrayerTime(prayerTimes.asr);
    final maghrib = parsePrayerTime(prayerTimes.maghrib);
    final isha = parsePrayerTime(prayerTimes.isha);

    if (currentTotalMinutes >= fajr && currentTotalMinutes < sunrise) {
      return PrayerTime.sunrise;
    } else if (currentTotalMinutes >= sunrise && currentTotalMinutes < dhuhr) {
      return PrayerTime.dhuhr;
    } else if (currentTotalMinutes >= dhuhr && currentTotalMinutes < asr) {
      return PrayerTime.asr;
    } else if (currentTotalMinutes >= asr && currentTotalMinutes < maghrib) {
      return PrayerTime.maghrib;
    } else if (currentTotalMinutes >= maghrib && currentTotalMinutes < isha) {
      return PrayerTime.isha;
    } else {
      return PrayerTime.fajr;
    }
  }

  static Map<int, int> surahToPage = {
    1: 1,
    2: 2,
    3: 50,
    4: 77,
    5: 106,
    6: 128,
    7: 151,
    8: 177,
    9: 187,
    10: 208,
    11: 221,
    12: 235,
    13: 249,
    14: 255,
    15: 262,
    16: 267,
    17: 282,
    18: 293,
    19: 305,
    20: 312,
    21: 322,
    22: 332,
    23: 342,
    24: 350,
    25: 359,
    26: 367,
    27: 377,
    28: 385,
    29: 396,
    30: 404,
    31: 411,
    32: 415,
    33: 418,
    34: 428,
    35: 434,
    36: 440,
    37: 446,
    38: 453,
    39: 458,
    40: 467,
    41: 477,
    42: 483,
    43: 489,
    44: 496,
    45: 499,
    46: 502,
    47: 507,
    48: 511,
    49: 515,
    50: 518,
    51: 520,
    52: 523,
    53: 526,
    54: 528,
    55: 531,
    56: 534,
    57: 537,
    58: 542,
    59: 545,
    60: 549,
    61: 551,
    62: 553,
    63: 554,
    64: 556,
    65: 558,
    66: 560,
    67: 562,
    68: 564,
    69: 566,
    70: 568,
    71: 570,
    72: 572,
    73: 574,
    74: 575,
    75: 577,
    76: 578,
    77: 580,
    78: 582,
    79: 583,
    80: 585,
    81: 586,
    82: 587,
    83: 587,
    84: 589,
    85: 590,
    86: 591,
    87: 591,
    88: 592,
    89: 593,
    90: 594,
    91: 595,
    92: 595,
    93: 596,
    94: 596,
    95: 597,
    96: 597,
    97: 598,
    98: 598,
    99: 599,
    100: 599,
    101: 600,
    102: 600,
    103: 601,
    104: 601,
    105: 601,
    106: 602,
    107: 602,
    108: 602,
    109: 603,
    110: 603,
    111: 603,
    112: 604,
    113: 604,
    114: 604,
  };
}
