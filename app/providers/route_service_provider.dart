import 'package:tunder/tunder.dart';
import '../config/routes.dart' as routes;

class RouteServiceProvider extends ServiceProvider {
  boot(Application app) {
    routes.web();
  }
}
