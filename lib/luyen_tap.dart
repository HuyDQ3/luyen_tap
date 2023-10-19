import '';

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

  String timeString = '05:04:05';
  DateTime dateTime = DateTime.parse(timeString);

  print(DateTime.parse(timeString));

  // print(DateTime.now().toIso8601String());
  // print(DateTime.now().toLocal());
  // print(DateTime.now().toUtc());
}

void listGenerate() {
  List<int> a = [1, 2];
  final growableList = List<int>.generate(
      a.length, (int index) => index * index,
      growable: true);
  print(growableList); // [0, 1, 4]
  print('\$numberDecimal');
}

void stringTest() {
  String a = 'aaa/bbb/ccc/';
  print(a.substring(0, a.length - 1));
}
