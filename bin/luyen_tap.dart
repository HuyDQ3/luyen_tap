import 'package:luyen_tap/data_structure_and_algorithms/node/node.dart';
import 'package:luyen_tap/data_structure_and_algorithms/queue/queue.dart';
import 'package:luyen_tap/data_structure_and_algorithms/node/filter_field.dart';

void main(List<String> arguments) {
  // luyen_tap.restElement();
  // luyen_tap.anonymousFunctions();
  // luyen_tap.loops(type: 1);
  // luyen_tap.errorHandling();
  // var r = Rectangle(5, 10);
  // print('left = ${r.left}, top = ${r.top}');
  // r.left = 6.9;
  // print('left = ${r.left}, top = ${r.top}');
  // Future.delayed(
  //   Duration(seconds: 0),
  //   () async => await luyen_tap.testString(),
  // );
  // print(decodeStringWithQueue("3[a]"));
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
  List<FilterField> list = getListFilterField(nameNode);

  print(List.generate(list.length, (index) => list[index].name));
}
