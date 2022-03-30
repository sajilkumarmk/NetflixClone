// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Searchdata _$SearchdataFromJson(Map<String, dynamic> json) => Searchdata(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => SearchDataResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchdataToJson(Searchdata instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

SearchDataResult _$SearchDataResultFromJson(Map<String, dynamic> json) =>
    SearchDataResult(
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$SearchDataResultToJson(SearchDataResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
