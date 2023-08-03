import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sell_ticket/di/injection.dart';
import 'package:sell_ticket/presentation/home/cubit/home_cubit.dart';
import 'package:sell_ticket/utils/router/router.dart';
import 'package:sell_ticket/utils/theme/main_theme.dart';

import 'constants/navigator/navigator_const.dart';

void main() async {
  init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => locator<HomeCubit>()),
      ],
      child: const MyApp(),
    ),
  );
}

init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MainTheme.light,
      onGenerateRoute: OngenerateRoutes.instance.routeGenerator,
      initialRoute: NavigatorConst.home,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaleFactor: 1.0,
          ),
          child: child!,
        );
      },
    );
  }
}
