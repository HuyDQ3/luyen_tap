import 'dart:convert';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:luyen_tap/auto_message.dart';
// import 'package:flutter/foundation.dart';

int calculate() {
  return 6 * 7;
}

void lt() {
  print('Hello world: ${calculate()}!');
  print('a 🇩🇰');
  var numList = [1, 2, 3];
  // List pattern [a, b, c] destructures the three elements from numList...
  var [a, b, c] = numList;
  // ...and assigns them to new variables.
  print(a + b + c);
  print(a);
}

void restElement() {
  var [a, b, ...rest, c, d] = [1, 2, 3, 4, 5, 6, 7];
  // Prints "1 2 [3, 4, 5] 6 7".
  print('$a $b $rest $c $d');
}

void anonymousFunctions() {
  const list = ['AaaA', 'BbbB', 'CccC'];
  list.map((e) => e.toUpperCase()).forEach((element) {
    print('$element: ${element.length}');
  });
}

void loops({required int type}) {
  // for =
  void fl() {
    var message = StringBuffer('Dart is fun');
    for (var i = 0; i < 5; i++) {
      message.write('!');
    }
    print(message);
  }

  switch (type) {
    case 1:
      fl();
    case 2:
    default:
  }
}

void errorHandling() {
  void misbehave() {
    try {
      dynamic foo = true;
      print(foo++); // Runtime error
    } catch (e) {
      print('misbehave() partially handled ${e.runtimeType}.');
      rethrow; // Allow callers to see the exception.
    }
  }

  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }
}

void time() {
  // DateTime dateTime = DateTime.now();
  // String year = dateTime.year.toString();
  // String month =
  //     dateTime.month < 10 ? '0${dateTime.month}' : dateTime.month.toString();
  // String day = dateTime.day < 10 ? '0${dateTime.day}' : dateTime.day.toString();
  // String hour =
  //     dateTime.hour < 10 ? '0${dateTime.hour}' : dateTime.hour.toString();
  // String minute =
  //     dateTime.minute < 10 ? '0${dateTime.minute}' : dateTime.minute.toString();
  // String second =
  //     dateTime.second < 10 ? '0${dateTime.second}' : dateTime.second.toString();

  // String formatedTime = '${year}-${month}-${day}T${hour}:${minute}:${second}Z';
  // print(formatedTime);

  // String timeString = '05:04:05';
  // DateTime dateTime = DateTime.parse(timeString);

  // print(DateTime.parse(timeString));

  // print(DateTime.now().toIso8601String());
  // print(DateTime.now().toLocal());
  // print(DateTime.now().toUtc());
  // DateTime startDate = DateTime(2023, 10, 15);
  // DateTime endDate = DateTime(2023, 10, 26);
  // DateTime startTime = DateTime(2023, 10, 22);
  // DateTime endTime = DateTime(2023, 10, 27);
  // if (((startTime.isAfter(startDate) ||
  //             startTime.isAtSameMomentAs(startDate)) &&
  //         startTime.isBefore(endDate)) &&
  //     ((endTime.isBefore(endDate) || endTime.isAtSameMomentAs(endDate)) &&
  //         endTime.isAfter(startDate))) {
  //   print('true');
  // } else {
  //   print('false');
  // }

  int timestamp = 1699068817;
  print(
    DateTime.fromMillisecondsSinceEpoch(timestamp * 1000),
  );
  print(DateTime.fromMillisecondsSinceEpoch(timestamp * 1000)
          .millisecondsSinceEpoch ~/
      1000);
}

void listGenerate() {
  List<int>? a;
  final growableList = List<int>.generate(
      a?.length ?? 0, (int index) => index * index,
      growable: true);
  print(growableList); // [0, 1, 4]
  print('\$numberDecimal');
}

void stringTest() {
  String a = 'aaa/bbb/ccc/';
  print(a.substring(0, a.length - 1));
}

void macAddressFormat() {
  String macAddress = '0:6:08:1:03:9';
  List<String> list = macAddress.split(':');
  for (int i = 0; i < list.length; i++) {
    if (list[i].length == 1) {
      list[i] = '0${list[i]}';
    }
  }
  String macAddress2 = list.join(":");
  print(macAddress);
  print(macAddress2);
}

void keyFromValue() {
  Map currencies = {"01": "USD", "17": "GBP", "33": "EUR"};

  MapEntry entry =
      currencies.entries.firstWhere((element) => element.value == 'GBP');

  Map<String, String> devices = {
    'all': 'tat ca',
    'web': 'web356',
    'app': 'app365',
    'qr': 'qr365',
  };

  List<String>? deviceValue = ['tat ca', 'wrb365'];
  // String key =
  //     currencies.entries.firstWhere((element) => element.value == 'GBP').key;
  // List<String?> deviceNames = (deviceValue == null || deviceValue.isEmpty)
  //     ? []
  //     : List.generate(
  //         deviceValue.length,
  //         (index) => devices.keys
  //             .firstWhere((element) => devices[element] == deviceValue[index]));

  Map curr = {"01": "USD", "17": "GBP", "33": "EUR"};
  var usdKey =
      curr.keys.firstWhere((k) => curr[k] == 'USD', orElse: () => null);
  List<String>? values = ['USD', 'GBP', 'AAA'];
  List<String>? keys = [];
  for (int i = 0; i < values.length; i++) {
    if (curr.keys.firstWhere((k) => curr[k] == values[i], orElse: () => null) !=
        null) {
      keys.add(curr.keys
          .firstWhere((k) => curr[k] == values[i], orElse: () => null));
    }
  }
  print(keys);
  // if (entry != null) {
  //   print('key = ${entry.key}');
  //   print('value = ${entry.value}');

  // }

  // print('key = $key');
  // print(deviceNames);
}

void testListEquals() {
  List<String> a = ['a', 'b', 'v'];
  List<String> b = ['a', 'v', 'b'];
  List<String> c = ['q', 'w', 'r'];
  Function eq = ListEquality().equals;
  Function deepEq = DeepCollectionEquality().equals;
  Function deepEqUnordered = DeepCollectionEquality.unordered().equals;
  print('a == b is ${a == b}');
  print('a == c is ${a == c}');
  print('a using ListEquality with b is ${eq(a, b)}');
  print('a using ListEquality with c is ${eq(a, c)}');
  print('a using DeepCollectionEquality with b is ${deepEq(a, b)}');
  print('a using DeepCollectionEquality with c is ${deepEq(a, c)}');
  print(
      'a using DeepCollectionEquality.unordered with b is ${deepEqUnordered(a, b)}');
  print(
      'a using DeepCollectionEquality.unordered with c is ${deepEqUnordered(a, c)}');
  // print('a using listEquals with b is ${listEquals(a, b)}');
  // print('a using listEquals with c is ${listEquals(a, c)}');
}

void filter() {
  String removeDiacritics(String input) {
    final diacriticCharacters = {
      'a': [
        'á',
        'à',
        'ả',
        'ã',
        'ạ',
        'ă',
        'ắ',
        'ằ',
        'ẳ',
        'ẵ',
        'ặ',
        'â',
        'ấ',
        'ầ',
        'ẩ',
        'ẫ',
        'ậ'
      ],
      'e': ['é', 'è', 'ẻ', 'ẽ', 'ẹ', 'ê', 'ế', 'ề', 'ể', 'ễ', 'ệ'],
      'i': ['í', 'ì', 'ỉ', 'ĩ', 'ị'],
      'o': [
        'ó',
        'ò',
        'ỏ',
        'õ',
        'ọ',
        'ô',
        'ố',
        'ồ',
        'ổ',
        'ỗ',
        'ộ',
        'ơ',
        'ớ',
        'ờ',
        'ở',
        'ỡ',
        'ợ'
      ],
      'u': ['ú', 'ù', 'ủ', 'ũ', 'ụ', 'ư', 'ứ', 'ừ', 'ử', 'ữ', 'ự'],
      'y': ['ý', 'ỳ', 'ỷ', 'ỹ', 'ỵ'],
      'd': ['đ']
    };

    for (var key in diacriticCharacters.keys) {
      for (var char in diacriticCharacters[key]!) {
        input = input.replaceAll(char, key);
      }
    }

    return input;
  }

  String a = 'chitiet';
  String b = 'chi tiết 123';
  Map<String, String> devices = {
    // 'all': StringConst.timekeeping_device_choice_all,
    'web': 'web365',
    'app': 'app365',
    'qr': 'ar123',
  };

  if ((a.trim().toLowerCase().contains(b.trim().toLowerCase() ?? '') ||
          // removeDiacritics(a.trim().toLowerCase())
          //     .contains(removeDiacritics(((a.trim() ?? '').toLowerCase()))) ||
          removeDiacritics(a.trim().replaceAll(' ', '').toLowerCase()).contains(
              removeDiacritics(
                  ((b.trim() ?? '').replaceAll(' ', '').toLowerCase())))
      // ||
      // a.detailId == detail.detail!.detailId
      )) {
    print('true');
    print(removeDiacritics(a.trim().replaceAll(' ', '').toLowerCase()));
    print(removeDiacritics(b.trim().replaceAll(' ', '') ?? '').toLowerCase());
  } else {
    print('false');
    print(removeDiacritics(a.trim().replaceAll(' ', '').toLowerCase()));
    print(removeDiacritics(b.trim().replaceAll(' ', '') ?? '').toLowerCase());
  }

  // if (removeDiacritics(a.trim().replaceAll(' ', '').toLowerCase()).contains(
  //         removeDiacritics(b.trim().replaceAll(' ', '').toLowerCase())) ||
  //     removeDiacritics(devices.values
  //             .firstWhere((value) => value.contains(devices[a] ?? ''))
  //             .trim()
  //             .replaceAll(' ', '')
  //             .toLowerCase())
  //         .contains(
  //             removeDiacritics(b.trim().replaceAll(' ', '').toLowerCase()))) {
  //   print("true");
  // } else {
  //   print('false');
  // }
}

void testMap() {
  Map<int, String> map = {
    1: 'a',
    2: 'b',
    3: 'c',
  };
  print(map[1]);
  print(map[0] ?? "nullllllllllllllllllllllllll");
  print(map[0]);
}

void testCast() {
  // dynamic a = 1;
  // print("cast to double: a is ${(a as int).runtimeType}");
  List a = [1, '2', 3, '4', 5.5];
  List<String> b =
      List<String>.generate(a.length, (index) => a[index].toString());
  print('a = ${a.toString()}');
  print('b = ${b.toString()}');
  List r = [Rectangle(1, 2, 3, 2), Rectangle(2, 2, 2, 2)];
  List<Rectangle> rr =
      List<Rectangle>.generate(r.length, (index) => r[index] as Rectangle);
  print('r = ${r.toString()}');
  print('r = ${r.runtimeType}');
  print('rr = ${rr.toString()}');
  print('rr = ${rr.runtimeType}');
}

void testSet() {
  List<int> list = [1, 2, 1, 3, 4, 2, 3, 4];
  Set<int> set = Set.from(list);
  print(set);
  print(set.toString());
  List<int> list2 = Set<int>.from(list).toList();
  print(list2);
  print(list2.toString());
}

void testEmptyList() {
  List<int> list = [];
  print(list.first);
}

void testListFunction() {
  List<int> list = [2, 4, 6];
  print(list.where((element) => element.isOdd).toString());
  print(list.where((element) => element.isEven).toString());
}

void testConvertFromStringToJSON() {
  String s =
      "{\"content\": \"a\rb\n\u{1f60e}c\t\u00a9d\", \"options\": [\"c\na\u{1f60e}\", \"\u{1f60e}b\n\", \"z\nc\u{1f60e}\n\"]}";
  String string2Raw(String x) => '\r$x';
  s = s.replaceAll('\n', r'\n');
  s = s.replaceAll('\r', r'\r');
  s = s.replaceAll('\t', r'\t');
  Map<String, String> sps = {
    "\n": r"\n",
    "\r": r"\r",
    "\t": r"\t",
  };
  for (var key in sps.keys) {
    s.replaceAll(key, sps[key]!);
  }
  // s.replaceAll(RegExp(r"\\n"), "");
  AutoMessage autoMessage = AutoMessage.fromJson(s);
  print(autoMessage.toJson());
  print(autoMessage.content.toString());
  for (var option in autoMessage.options) {
    print(option);
  }
}
