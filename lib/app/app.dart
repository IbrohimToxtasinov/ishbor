import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishbor/cubit/tab/tab_cubit.dart';
import '../cubit/connectivity/connectivity_cubit.dart';
import '../ui/router.dart';
import '../utils/constans.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => ConnectivityCubit()),
      BlocProvider(create: (context) => TabCubit()),
    ], child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: 'ishbor',
        theme: ThemeData(primarySwatch: Colors.amber),
        debugShowCheckedModeBanner: false,
        initialRoute: splashPage,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
