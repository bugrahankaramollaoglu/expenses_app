import 'package:expenses_tracker/expenses.dart';
import 'package:flutter/material.dart';

var kColor =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 121, 146, 189));

var kDarkColor = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 16, 63, 37),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColor,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColor.onPrimary,
          elevation: 5,
        ),
        appBarTheme: const AppBarTheme().copyWith(
          // backgroundColor: kColor.onPrimary,
          backgroundColor: kDarkColor.onPrimaryContainer,
          foregroundColor: kDarkColor.primaryContainer,
          elevation: 5,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColor.primaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColor,
        // copyWith() kullanırsan sadece o özellikler override edilir
        appBarTheme: AppBarTheme().copyWith(
          // backgroundColor: kColor.onPrimary,
          backgroundColor: kColor.onPrimaryContainer,
          foregroundColor: kColor.primaryContainer,
          elevation: 5,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColor.primaryContainer,
          ),
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColor.onPrimary,
          elevation: 5,
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColor.onSecondaryContainer,
                fontSize: 20,
              ),
              titleMedium: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColor.onSecondaryContainer,
                fontSize: 16,
              ),
            ),
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Expenses(),
    ),
  );
}
