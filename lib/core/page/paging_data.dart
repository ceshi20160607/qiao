import 'dart:convert';

import '../../generated/json/paging_data.g.dart';

class PagingData<T> {
  int? current;
  // bool? hitCount;
  int? pages;
  List<T>? list;
  // bool? searchCount;
  int? size;
  int? total;

  PagingData();

  factory PagingData.fromJson(Map<String, dynamic> json) =>
      $PagingDataFromJson<T>(json);

  Map<String, dynamic> toJson() => $PagingDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
