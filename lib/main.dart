import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nafa7at/bloc_observer.dart';
import 'package:nafa7at/core/injection/injection.dart';
import 'package:nafa7at/nafa7at_app.dart';

void main() {
  runZoned(() async {
    Bloc.observer = MyBlocObserver();
    await Future.wait([ScreenUtil.ensureScreenSize()]);
    configureDependencies();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]).then((_) {
      runApp(const Nafa7atApp());
    });
  });
}
