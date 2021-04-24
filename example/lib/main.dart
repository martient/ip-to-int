import 'package:ip_to_int/ip_to_int.dart';

void main() {
  String ipAddress = "127.0.0.1";

  int integerIpAddress = IpInt(ipAddress).toInt();
  print(integerIpAddress);
  String convertInteger = IpInt(integerIpAddress.toString()).toString();
  print(convertInteger);
}
