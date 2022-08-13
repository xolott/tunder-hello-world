import 'package:dotenv/dotenv.dart';
import 'package:shelf_hotreload/shelf_hotreload.dart';

import '../bootstrap/app.dart';

void main() async {
  final env = DotEnv()..load(['.env']);
  env.addAll({'APP_URL': 'http://0.0.0.0:8000'});
  withHotreload(() => bootstrap().serve(dotenv: env));
}
