import 'dart:async';

import 'package:tunder/http.dart';

class ExampleMiddleware extends Middleware {
  @override
  FutureOr<Response> handle(Request request, next) async {
    // do something before the request is handled
    Response response = await next(request);
    response.headers["Server"] = "tunder";
    // do something after the request is handled with the response
    return response;
  }
}
