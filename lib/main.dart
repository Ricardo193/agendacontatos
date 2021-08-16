import 'package:agenda/style.dart';
import 'package:flutter/material.dart';

import 'screens/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Agenda",
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: red,
        ),
        dividerTheme: DividerThemeData(
          color: grayDivider,
          thickness: 1,
        ),
        primarySwatch: blueTheme,
        iconTheme: IconThemeData(
          color: blueTheme,
          size: 20,
        ),
      ),
    ),
  );
}
