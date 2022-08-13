import 'package:test/test.dart';

import '../feature.dart';
import '../helpers.dart';

main() {
  /**
   * All your feature tests should call this function. It basically setups the
   * server for each test in a random port to allow for multiple tests to run
   * in parallel.
   */
  feature();

  test('Example test', () async {
    var response = await get('/');

    expect(response.statusCode, 200);
    expect(response.body, 'Hello World!');
  });
}
