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
}
