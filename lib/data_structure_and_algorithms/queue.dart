import 'dart:collection';

/*
Cho một string, nhiệm vụ của bạn là in chuỗi đảo ngược 
của string đó ra màn hình bằng cách dùng stack.
*/
String reverseString(String s) {
  String reverse = '';
  Queue<int> queue = Queue<int>();
  for (var element in s.runes) {
    queue.addFirst(element);
  }
  for (var element in queue) {
    reverse += String.fromCharCode(element);
  }
  return reverse;
}

/*
Cho một số nguyên dương n.
Hãy chuyển n thành mã nhị phân.
*/
String binaryCode(int n) {
  String binary = '';
  Queue<int> queue = Queue<int>();
  while (n > 0) {
    if (n % 2 != 0) {
      queue.addFirst(1);
    } else {
      queue.addFirst(0);
    }
    n ~/= 2;
  }
  for (var element in queue) {
    binary += element.toString();
  }
  return binary;
}

/*
Bạn được cho một chuỗi s đã được mã hóa, hãy viết hàm giải mã chuỗi này. Xem ví dụ để hiểu rõ hơn về cách giải mã.
Ví dụ:
s = "3[a]", decodeString(s) = "aaa".
s = "3[ab]", decodeString(s) = "ababab".
s = "3[b2[ca]]", decodeString(s) = "bcacabcacabcaca".
s = "3[a3[b]1[ab]]", decodeString(s) = "abbbababbbababbbab".
*/
String? decodeStringWithQueue(String s) {
  if (s.isEmpty) return null;
  String answer = '';
  int positive = 0;
  int multi = 1;
  int n = 0;
  List<int> additionStrings = ["[".codeUnitAt(0)];
  List<int> subtractionStrings = ["]".codeUnitAt(0)];
  Queue<int> queue = Queue<int>();
  for (var element in s.codeUnits) {
    queue.addFirst(element);
    if (additionStrings.any((a) => element == a)) {
      positive++;
    } else if (subtractionStrings.any((s) => element == s)) {
      positive--;
    }
  }
  if (positive != 0) {
    return null;
  }
  while (queue.isNotEmpty) {
    if (additionStrings.any((element) => element != queue.first) &&
        subtractionStrings.any((element) => element != queue.first) &&
        (queue.first < "0".codeUnitAt(0) || queue.first > "9".codeUnitAt(0))) {
      if (n > 0) {
        answer *= n;
        n = 0;
        if (multi != 1) multi = 1;
      }
      answer = String.fromCharCode(queue.first) + answer;
    } else if (additionStrings.any((element) => element != queue.first) &&
        subtractionStrings.any((element) => element != queue.first) &&
        (queue.first >= "0".codeUnitAt(0) &&
            queue.first <= "9".codeUnitAt(0))) {
      n += (int.tryParse(String.fromCharCode(queue.first)) ?? 0) * multi;
      multi *= 10;
    }
    queue.removeFirst();
    if (queue.isEmpty) answer *= n;
  }
  return answer;
}
