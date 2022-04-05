import 'package:json_annotation/json_annotation.dart';

part 'hotandnewdata.g.dart';

@JsonSerializable()
class Hotandnewdata {
  List<Result> results;

  Hotandnewdata({
    required this.results,
  });

  factory Hotandnewdata.fromJson(Map<String, dynamic> json) {
    return _$HotandnewdataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotandnewdataToJson(this);
}

@JsonSerializable()
class Result {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'overview')
  String? overview;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  Result({
    this.backdropPath,
    this.originalTitle,
    this.posterPath,
    this.overview,
    this.releaseDate,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
