#!/usr/bin/env dart

import 'dart:io';

import 'package:tunder/contracts.dart';

import 'bootstrap/app.dart';

main(List<String> args) async {
  var app = bootstrap();
  ConsoleKernelContract kernel = app.get(ConsoleKernelContract);

  var exitCode = await kernel.handle(args);

  exit(exitCode);
}
