import 'package:tunder/http.dart';

class HomeController extends Controller {
  index(Request request) {
    return 'Tunder API running using Docker';
  }
}
