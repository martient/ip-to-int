library ip_to_int;

import 'dart:math';

RegExp regIp = RegExp(
    r"(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}");

class IpInt {
  final String _ip;
  IpInt(this._ip);

  int toInt() {
    if (!regIp.hasMatch(this._ip))
      throw Exception(
          "The ip: $this._ip  dosen't complit with the IPV4 standard");
    List tmp = this._ip.split('.');
    return tmp.asMap().entries.map((entry) {
      return int.parse(entry.value) * pow(256, tmp.length - entry.key - 1);
    }).reduce((prev, curr) {
      return prev + curr;
    });
  }

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
      throw Exception(
          "This integer can't be proccess by int.parse, please check your value: $this._ip");
    }
  }
}
