import 'dart:math';

import 'package:dotenv/dotenv.dart';
import 'package:tunder/tunder.dart';
import 'package:test/test.dart';

import '../bootstrap/app.dart';

feature() {
  final DotEnv env = DotEnv();
  env.load(['.env', '.env.test']);

  late Application app;

  setUpAll(() async {
    var port = Random().nextInt(5996) + 4003;
    app = bootstrap();
    await app.serve(port: port, dotenv: env);
  });
}
