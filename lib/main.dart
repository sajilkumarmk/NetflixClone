import 'package:flutter/material.dart';
// import 'package:netflixclone/core/theme.dart';
import 'package:netflixclone/presentation/main_page/screen_main_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.blue,
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      // darkTheme: AppTheme.darkTheme,
      home: ScreenMainPage(),
    );
  }
}
