import 'package:luyen_tap/data_structure_and_algorithms/array.dart';
import 'package:test/test.dart';

void main() {
  test(
    'sum of list',
    () {
      expect(sumOfList([1, 3, 5, -3, 0]), 6);
      expect(sumOfList([1, 2, 3, 4]), 10);
      expect(sumOfList([-1, -6, -7, -8, 20]), -2);
    },
  );

  test(
    'power of each item in list',
    () {
      expect(powerEachItemInList([1, 3, 5, -3], 2), [1, 9, 25, 9]);
      expect(powerEachItemInList([1, 2, 3, 4], 2), [1, 4, 9, 16]);
      expect(
          powerEachItemInList([0, 4, 6, 8, 3, 5], 2), [0, 16, 36, 64, 9, 25]);
    },
  );

  test(
    'prime number in list',
    () {
      expect(primeNumber([1, 2, 3, 4]), [2, 3]);
      expect(primeNumber([7, 2, 3]), [7, 2, 3]);
      expect(primeNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), [2, 3, 5, 7]);
    },
  );

  test(
    'item\'s frequency in list',
    () {
      expect(frequency([4, 2, 2, 5, 6, 5]), {2: 2, 4: 1, 5: 2, 6: 1});
      expect(frequency([2, 2, 2, 1, 2]), {1: 1, 2: 4});
      expect(
          frequency(
              [1, 2, 3, 0, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2]),
          {0: 1, 1: 15, 2: 4, 3: 1});
    },
  );
}
