import 'package:chatting_app/core/routing/app_router.dart';
import 'package:chatting_app/core/routing/routes.dart';
import 'package:chatting_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChattingApp extends StatelessWidget {
  final AppRouter _appRouter;
  const ChattingApp(this._appRouter, {super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Chatting App',
          theme: ThemeData(scaffoldBackgroundColor: ColorsManager.white),
          onGenerateRoute: _appRouter.generateRoute,
          initialRoute: Routes.login,
        );
      },
    );
  }
}
