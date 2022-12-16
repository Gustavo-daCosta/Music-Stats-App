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
    scaffoldBackgroundColor: greyPlatinum,

    appBarTheme: const AppBarTheme(
      backgroundColor: orangeWeb,
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
