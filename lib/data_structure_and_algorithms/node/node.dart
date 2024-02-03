import 'package:luyen_tap/data_structure_and_algorithms/node/filter_field.dart';

List<FilterField> getListFilterField(FilterField? filterField) {
  List<FilterField> answers = [];
  FilterField? first = filterField;
  do {
    filterField = filterField?.next;
    if (filterField != null && filterField.isFilter) {
      answers.add(filterField);
    }
  } while (filterField != null && filterField.next != first);
  return answers;
}
