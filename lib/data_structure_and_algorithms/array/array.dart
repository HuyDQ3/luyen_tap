import 'dart:collection';
import 'dart:math';

// Nhập vào một số nguyên dương n, và n số nguyên lần
//lượt là các phần tử trong dãy a. Hãy đưa ra một số nguyên
// là tổng tất cả các phần tử trong dãy đó.
int sumOfList(List<int> items) {
  int sum = 0;
  int i = 0;
  while (i < items.length) {
    sum += items[i];
    i++;
  }
  return sum;
}

//Nhập vào một số nguyên dương n, và n số nguyên lần lượt là các phần tử
//trong dãy a. Hãy thay đổi giá trị của mỗi phần tử thành bình phương của chính
//nó, sau đó in mảng đó ra màn hình (mỗi phần tử cách n
//hau bởi một khoảng trắng).
List<num> powerEachItemInList(List<num> items, num exponent) {
  List<num> squares = items;
  int i = 0;
  while (i < squares.length) {
    squares[i] = pow(squares[i], exponent);
    i++;
  }
  return squares;
}

// Nhập vào một số nguyên dương n, và n số nguyên lần lượt là các
//phần tử trong dãy a. Hãy in lần lượt các số nguyên tố có trong dãy a ra
//màn hình, sau mỗi phần tử có đúng một khoảng trắng.
// (Số nguyên tố là số nguyên dương có đúng 2 ước là 1 và chính nó.
//Số a được gọi là ước của b nếu b chia hết cho a). Biết rằng dãy sẽ
//có ít nhất một số nguyên tố.
List<int> primeNumber(List<int> items) {
  /*
  Nếu n < 2 thì n không là số nguyên tố.
Nếu n = 2 hoặc n = 3 thì n là số nguyên tố.
Nếu n ≥ 2:
Nếu n không có ước trong khoảng 2 đến phần nguyên căn bậc 2 của n thì n là số nguyên tố, ngược lại n không là số nguyên tố.
  */
  bool checkPrimeNumber(int n) {
    if (n < 2) {
      return false;
    }
    if (n == 2 || n == 3) {
      return true;
    }
    for (int i = 2; i <= sqrt(n); i++) {
      if (n % i == 0) {
        return false;
      }
    }
    return true;
  }

  List<int> primeNumbers = [];
  int i = 0;
  while (i < items.length) {
    if (checkPrimeNumber(items[i])) {
      primeNumbers.add(items[i]);
    }
    i++;
  }
  return primeNumbers;
}

/*
Nhập và một số nguyên dương n, tiếp theo là n số nguyên dương lần lượt là các 
phần tử của một dãy số, hãy đếm tần số (số lần xuất hiện) của các số trong dãy 
và in nó ra màn hình dưới dạng sau: "a1 - t1; a2 - t2; ... an - tn; ", 
trong đó t1 là số lần xuất hiện của số a1, t2 là số lần xuất hiện 
của a2, ... a1, a2, .. an không trùng nhau và được sắp xếp tăng dần (xem ví dụ để rõ hơn).
*/
Map<int, int> frequency(List<int> items) {
  Map<int, int> f = {};
  items.sort();
  Set<int> setItems = items.toSet();
  int i = 0;
  while (i < setItems.length) {
    int j = 0;
    int count = 0;
    while (j < items.length) {
      if (items[j] == setItems.elementAt(i)) {
        count++;
      }
      j++;
    }
    f.putIfAbsent(setItems.elementAt(i), () => count);
    i++;
  }
  return f;
}
