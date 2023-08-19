// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carpage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Carpage _$CarpageFromJson(Map<String, dynamic> json) => Carpage()
  ..list = (json['list'] as List<dynamic>)
      .map((e) => Car.fromJson(e as Map<String, dynamic>))
      .toList()
  ..totalRow = json['totalRow'] as num
  ..pageSize = json['pageSize'] as num
  ..pageNumber = json['pageNumber'] as num
  ..current = json['current'] as String
  ..totalPage = json['totalPage'] as num
  ..pages = json['pages'] as String;

Map<String, dynamic> _$CarpageToJson(Carpage instance) => <String, dynamic>{
      'list': instance.list,
      'totalRow': instance.totalRow,
      'pageSize': instance.pageSize,
      'pageNumber': instance.pageNumber,
      'current': instance.current,
      'totalPage': instance.totalPage,
      'pages': instance.pages,
    };
