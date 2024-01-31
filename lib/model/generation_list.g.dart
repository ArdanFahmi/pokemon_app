// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerationList _$GenerationListFromJson(Map<String, dynamic> json) =>
    GenerationList(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenerationListToJson(GenerationList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
