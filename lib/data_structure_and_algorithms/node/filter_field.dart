class FilterField {
  String name;
  FilterField? previous;
  FilterField? next;
  bool isFilter;
  FilterField({
    required this.name,
    this.isFilter = true,
    this.previous,
    this.next,
  });
}
