import 'package:flutter/material.dart';
import 'package:weather/weather_forecast/weather_forecast.dart';

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
      brightness: Brightness.dark,
      primaryColor: Colors.grey[800],
      scaffoldBackgroundColor: Colors.red,
      backgroundColor: Colors.amber,
      textTheme: _appTextTheme(base.textTheme),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber));
}

TextTheme _appTextTheme(TextTheme base) {
  return base
      .copyWith(
          headline1: base.headline1.copyWith(
            fontWeight: FontWeight.w500,
          ),
          subtitle1: base.headline1
              .copyWith(fontSize: 18.0, fontStyle: FontStyle.italic),
          caption: base.caption
              .copyWith(fontWeight: FontWeight.w400, fontSize: 14.0),
          button: base.button.copyWith(),
          bodyText1: base.bodyText1.copyWith(
            fontSize: 16.9,
            fontFamily: "Lobster",
            color: Colors.white,
          ))
      .apply(
        fontFamily: "Lobster",
        displayColor: Colors.amber,
      );
}

void main() => runApp(new MaterialApp(
      home: WeatherForecast(),
    ));
