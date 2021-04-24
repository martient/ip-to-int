library ip_to_int;

import 'dart:math';

/// This regex is used to check if the IPv4 is compliant with the standard format
RegExp regIp = RegExp(
    r"(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}");

/// The easiest way to convert IPv4 address as an integer and vice versa with [toInt] and [toIp]
class IpInt {
  /// The IP address in integer format or standard ipv4 format
  final String _ip;
  IpInt(this._ip);

  /// Convert ipv4 as integer, value who represent the address
  int toInt() {
    if (!regIp.hasMatch(this._ip))
      //The IP address gift to IpInt is incorrect, be sure to use IPV4 format
      throw Exception(
          "The ip: $this._ip  dosen't complit with the IPV4 standard");
    List<String> tmp = this._ip.split('.');
    return tmp.asMap().entries.map((entry) {
      return int.parse(entry.value) * pow(256, tmp.length - entry.key - 1);
    }).reduce((prev, curr) {
      return prev + curr;
    }).toInt();
  }

  /// Convert integer ipv4 address to understandable string like "127.0.0.1"
  String toIp() {
    try {
      int value = int.parse(this._ip);

      return [
        (value >> 24) & 0xff,
        (value >> 16) & 0xff,
        (value >> 8) & 0xff,
        value & 0xff
      ].join('.');
    } on FormatException {
      // This error is thrown if int. Parse doesn't find an integer in the string given
      throw Exception(
          "This integer can't be proccess by int.parse, please check your value: $this._ip");
    }
  }
}
