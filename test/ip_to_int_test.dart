import 'package:flutter_test/flutter_test.dart';
import 'package:ip_to_int/ip_to_int.dart';

void main() {
  test('Check 127.0.0.1 to integer with toInt', () {
    expect(IpInt("127.2.3.1").toInt(), 2130838273);
  });
  test("Check error ip string with 3 value with toInt", () {
    expect(() => IpInt("127.0.1").toInt(), throwsException);
  });
  test("Check ip string with letter with toInt", () {
    expect(() => IpInt("127.0.2.a").toInt(), throwsException);
  });

  test("Check 2130706433 with toIp", () {
    expect(IpInt("2130706433").toIp(), "127.0.0.1");
  });

  test("Check ip string with toIp", () {
    expect(() => IpInt("127.0.0.1").toIp(), throwsException);
  });
}
