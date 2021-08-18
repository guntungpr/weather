import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/injection.dart';
import 'package:weather/presentation/core/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configurationInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(AppWidget());
}
