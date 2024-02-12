import 'dart:async';
import 'package:cod_soft_alarm/Home.dart';
import 'package:flutter/material.dart';
import 'package:alarm/alarm.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Alarm.init(showDebugLogs: true);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.blueGrey,
          // cardColor: Colors.blueAccent,
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.grey, brightness: Brightness.dark)),
      home: const ExampleAlarmHomeScreen(),
    ),
  );
}
