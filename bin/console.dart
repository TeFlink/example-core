#! /usr/bin/env dart
import 'package:teflink_console/console.dart' as console;
import 'package:teflink_dot_env/dot_env.dart';
import 'dart:io';

Future main(List<String> args) async {
  await console.showTitle();
  final currentDirectory = Directory.current.path;
  final dotEnv = DotEnv();
  await dotEnv.bootEnv('$currentDirectory/.env');
  final app = console.Application(dotEnv: dotEnv);
  print(app.getVersion());
  app.runServer(args);
}
