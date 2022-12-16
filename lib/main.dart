import 'package:flutter/material.dart';
import 'package:music_stats/pages/page_view.dart';

//import 'global/globals.dart' as globals;
import 'theme/theme.dart';

void main() => runApp(const MusicStatsApp());

class MusicStatsApp extends StatelessWidget {
  const MusicStatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.light,
      home: const ViewControllerPage(),
    );
  }
}

extension DarkMode on BuildContext {
  bool get isDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}
