import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app.dart';
import 'package:url_strategy/url_strategy.dart';

import 'bloc_providers.dart';

Future<void> main() async {
  // -- Add Widgets Binding
  WidgetsFlutterBinding.ensureInitialized();

  // Here we set the URL strategy for our web app.
  // It is safe to call this function when running on mobile or desktop as well.
  setPathUrlStrategy();

  runApp(
    MultiBlocProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}
