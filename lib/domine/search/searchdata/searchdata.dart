import 'package:json_annotation/json_annotation.dart';

part 'searchdata.g.dart';

@JsonSerializable()
class Searchdata {
  @JsonKey(name: 'results')
  List<SearchDataResult> results;

  Searchdata({this.results = const []});

  factory Searchdata.fromJson(Map<String, dynamic> json) {
    return _$SearchdataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchdataToJson(this);
}

@JsonSerializable()
class SearchDataResult {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  SearchDataResult({
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory SearchDataResult.fromJson(Map<String, dynamic> json) {
    return _$SearchDataResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchDataResultToJson(this);
}
