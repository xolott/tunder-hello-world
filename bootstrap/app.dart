import 'dart:io';

import 'package:dotenv/dotenv.dart';
import 'package:tunder/contracts.dart';
import 'package:tunder/tunder.dart';

import '../app/console/kernel.dart';
import '../app/http/kernel.dart';

Application bootstrap() {
  final DotEnv env = DotEnv();
  env.load();
  Application().flush();

  final app = Application(
    basePath: Directory.current.path,
    baseUrl: env['APP_URL'] ?? 'http://localhost:9090',
  );

  app.singleton(HttpKernelContract, Kernel);
  app.singleton(ConsoleKernelContract, ConsoleKernel);

  return app..boot();
}
