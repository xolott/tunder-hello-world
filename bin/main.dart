import 'dart:io' show Platform;

import 'package:dotenv/dotenv.dart';
import 'package:shelf_hotreload/shelf_hotreload.dart';

import '../bootstrap/app.dart';

void main() async {
  final env = DotEnv()..load(['.env']);
  Map<String, String> envVars = Platform.environment;
  final port = envVars['PORT'] ?? 8080;
  env.addAll({'APP_URL': 'http://0.0.0.0:$port'});
  withHotreload(() => bootstrap().serve(dotenv: env));
}
