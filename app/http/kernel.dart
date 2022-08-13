import 'package:tunder/http.dart' as Http;
import 'package:tunder/tunder.dart';

import 'middlewares/example_middleware.dart';

import '../config/providers.dart' as config;

class Kernel extends Http.Kernel {
  Kernel(Application app, Http.Router router) : super(app, router);

  List<ServiceProvider> get providers => config.providers();

  List middlewares = [ExampleMiddleware];
}
