import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Files
import 'config/_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        return MaterialApp.router(
          title: 'P.O.R.T.F.O.L.I.O',
          debugShowCheckedModeBanner: false,
          themeMode: state,
          theme: lightTheme,
          darkTheme: darkTheme,
          scrollBehavior: scrollBehavior,
          routerConfig: router,
        );
      },
    );
  }
}
