import 'package:flutter/material.dart';

/*   Light Theme
 * primary: azul
 * accent: amarelo
 * background: cinza
*/

/*   Dark Theme
 * primary: amarelo,
 * accent: azul,
 * background: preto,
 */

// Palette
const black = Colors.black;
const blueOxford = Color.fromARGB(255, 20, 33, 61);
const orangeWeb = Color.fromARGB(255, 252, 163, 17);
const greyPlatinum = Color.fromARGB(255, 229, 229, 229);
const white = Colors.white;

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: blueOxford,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: orangeWeb,
      brightness: Brightness.light
    ),
    scaffoldBackgroundColor: greyPlatinum.withOpacity(0.8),
    backgroundColor: greyPlatinum,
    textTheme: const TextTheme(
      headline1: TextStyle(color: blueOxford),
      subtitle1: TextStyle(color: blueOxford),
      bodyText1: TextStyle(color: blueOxford),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: orangeWeb,
      centerTitle: true,
      elevation: 0,
      shadowColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: blueOxford,
      ),
      titleTextStyle: TextStyle(
        color: blueOxford,
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),
    )
  );
}

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: orangeWeb,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: blueOxford,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: black,
  );
}

class CustomStyles {
  TextStyle titleStyle = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
}
