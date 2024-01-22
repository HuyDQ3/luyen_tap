// Nhập vào một số nguyên dương n, và n số nguyên lần
//lượt là các phần tử trong dãy a. Hãy đưa ra một số nguyên
// là tổng tất cả các phần tử trong dãy đó.

import 'dart:math';

int sumOfList(List<int> items) {
  int sum = 0;
  int i = 0;
  while (i < items.length) {
    sum += items[i];
    i++;
  }
  return sum;
}

List<num> powerEachItemInList(List<num> items, num exponent) {
  List<num> squares = items;
  int i = 0;
  while (i < squares.length) {
    squares[i] = pow(squares[i], exponent);
    i++;
  }
  return squares;
}
