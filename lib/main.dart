import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kcp_app/injection.dart';
import 'package:kcp_app/presentation/core/Main_App.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MainApp());
}
