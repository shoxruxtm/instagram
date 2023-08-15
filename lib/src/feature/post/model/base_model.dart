
import 'package:instagram/src/feature/post/model/photo_model.dart';

class BaseModel {
  List<PhotoModel> photos;
  int? total;
  int? limit;
  int? skip;

  BaseModel({
    required this.photos,
    this.total,
    this.limit,
    this.skip,
  });

  factory BaseModel.fromJson(Map<String, Object?> json) => BaseModel(
    photos: json["photos"] != null
        ? List<Map<String, Object?>>.from(json["photos"] as List)
        .map(PhotoModel.fromJson)
        .toList()
        : [],
    total: json["total"] as int?,
    limit: json["limit"] as int?,
    skip: json["skip"] as int?,
  );

  Map<String, Object?> toJson()=>{
    "photos":photos.map((e) => e.toJson()).toList(),
    "total":total,
    "limit":limit,
    "skip":skip,
  };
}
