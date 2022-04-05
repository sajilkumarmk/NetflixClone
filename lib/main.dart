import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'application/downloads/downloads_bloc.dart';

import 'application/fast_laugh/fastlaugh_bloc.dart';
import 'application/hot_and_new/every_ones_watching/everyoneswatching_bloc.dart';
import 'application/hot_and_new/hotandnew_bloc.dart';
import 'application/search/search_bloc.dart';
import 'domine/core/di/injectable.dart';
import 'presentation/screen_splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<DownloadsBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
        BlocProvider(create: (ctx) => getIt<FastlaughBloc>()),
        BlocProvider(create: (ctx) => getIt<HotandnewBloc>()),
        BlocProvider(create: (ctx) => getIt<EveryoneswatchingBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.blue,
        ),
        darkTheme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
        ),
        // darkTheme: AppTheme.darkTheme,
        home: const ScreenSplash(),
      ),
    );
  }
}
