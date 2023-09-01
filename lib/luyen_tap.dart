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
