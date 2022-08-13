import '../providers/app_service_provider.dart';
import '../providers/route_service_provider.dart';

providers() {
  return [
    RouteServiceProvider(),
    AppServiceProvider(),
  ];
}
