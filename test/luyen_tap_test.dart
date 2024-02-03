import 'package:luyen_tap/data_structure_and_algorithms/array/array.dart';
import 'package:luyen_tap/data_structure_and_algorithms/node/filter_field.dart';
import 'package:luyen_tap/data_structure_and_algorithms/node/node.dart';
import 'package:luyen_tap/data_structure_and_algorithms/queue/queue.dart';
import 'package:test/test.dart';

void main() {
  // array
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
  // ---------------------------------------------------------------------------

  // queue
  test(
    'reverse string',
    () {
      expect(reverseString('codelearn'), 'nraeledoc');
      expect(reverseString('abcd'), 'dcba');
      expect(reverseString('123456789'), '987654321');
    },
  );

  test(
    'binary string',
    () {
      expect(binaryCode(13), "1101");
      expect(binaryCode(123), "1111011");
    },
  );

  test(
    'decodeStringWithQueue',
    () {
      expect(decodeStringWithQueue("3[a"), null);
      expect(decodeStringWithQueue("3[a]"), "aaa");
      expect(decodeStringWithQueue("10[a]"), "aaaaaaaaaa");
      expect(decodeStringWithQueue("3[ab]"), "ababab");
      expect(decodeStringWithQueue("3[b2[ca]]"), "bcacabcacabcaca");
    },
  );
  // ---------------------------------------------------------------------------

  // node
  test(
    'getListFilterField',
    () {
      String name = "name";
      String organization = "organization";
      String position = "position";
      String wifi = "wifi";
      String location = "location";
      String device = "device";
      FilterField nameNode = FilterField(name: name);
      FilterField organizationNode = FilterField(name: organization);
      FilterField positionNode = FilterField(name: position);
      FilterField wifiNode = FilterField(name: wifi, isFilter: false);
      FilterField locationNode = FilterField(name: location);
      FilterField deviceNode = FilterField(name: device, isFilter: false);
      nameNode.next = organizationNode;
      organizationNode.next = positionNode;
      positionNode.next = wifiNode;
      wifiNode.next = locationNode;
      locationNode.next = deviceNode;

      expect(getListFilterField(nameNode),
          <FilterField>[organizationNode, positionNode, locationNode]);
      expect(getListFilterField(organizationNode),
          <FilterField>[positionNode, locationNode]);
      expect(getListFilterField(wifiNode), <FilterField>[locationNode]);
      expect(getListFilterField(deviceNode), <FilterField>[]);
    },
  );
}
