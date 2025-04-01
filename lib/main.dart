import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nafa7at/bloc_observer.dart';
import 'package:nafa7at/core/injection/injection.dart';
import 'package:nafa7at/nafa7at_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();

  Bloc.observer = MyBlocObserver();
  configureDependencies();

  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);

  runApp(const Nafa7atApp());
}
