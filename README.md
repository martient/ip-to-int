# ip-to-int

[![Dart](https://github.com/martient/ip-to-int/actions/workflows/dart.yml/badge.svg?branch=main)](https://github.com/martient/ip-to-int/actions/workflows/dart.yml)
[![codecov](https://codecov.io/gh/martient/ip-to-int/branch/main/graph/badge.svg?token=GZJH4C8TOA)](https://codecov.io/gh/martient/ip-to-int)

## Usage

### Class IpInt

``` dart
IpInt("<IP-ADDRESS>")
```

``` dart
IpInt("127.0.0.1")
```

#### toInt

This method return the String ip address as integer

``` dart
IpInt("<IP-ADDRESS>").toInt()
```

``` dart
int integer = IpInt("127.2.3.1").toInt();
print(integer);

2130838273
```

#### toIp

This method return the integer as an String ip address

``` dart
IpInt("<INTEGER>").toIp()
```

``` dart
String ipAddress IpInt("2130706433").toIp()
print(ipAddress)

"127.0.0.1"
```
