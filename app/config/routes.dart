import 'package:tunder/http.dart';

import '../http/controllers/home_controller.dart';

web() {
  /**
   * Here you can define all your routes.
   */
  Route.get('/', HomeController, 'index');
}
