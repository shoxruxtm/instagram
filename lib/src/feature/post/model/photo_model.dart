import 'user_model.dart';

class PhotoModel {
  String? id;
  String? slug;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? promotedAt;
  String? color;
  String? blurHash;
  String? description;
  String? altDescription;
  List? breadcrumbs;
  UrlsModel? urls;
  LinksModel? links;
  int? likes;
  int? height;
  int? weight;
  bool? likedByUser;
  List<String>? currentUserCollections;
  SponsorshipModel? sponsorship;
  UserModel? user;

  PhotoModel({
    this.id,
    this.slug,
    this.createdAt,
    this.updatedAt,
    this.promotedAt,
    this.color,
    this.blurHash,
    this.description,
    this.altDescription,
    this.breadcrumbs,
    this.urls,
    this.links,
    this.likes,
    this.height,
    this.weight,
    this.likedByUser,
    this.currentUserCollections,
    this.sponsorship,
    this.user
  });

  factory PhotoModel.fromJson(Map<String, Object?> json) => PhotoModel(
      id: json["id"] as String?,
      slug: json["slug"] as String?,
      createdAt: json["created_at"] != null
          ? DateTime.tryParse(json["created_at"] as String)
          : null,
      updatedAt: json["updated_at"] != null
          ? DateTime.tryParse(json["updated_at"] as String)
          : null,
      promotedAt:json["promoted_at"] != null? DateTime.tryParse(json["promoted_at"] as String)
      : null,
      color: json["color"] as String?,
      blurHash: json["blur_hash"] as String?,
      description: json["description"] as String?,
      altDescription: json["alt_description"] as String?,
      breadcrumbs: json["breadcrumbs"] as List<dynamic>?,
      urls: json["urls"] !=null?UrlsModel.fromJson(json["urls"] as Map<String, Object?>):null,
      links: json["links"]!=null?LinksModel.fromJson(json["links"] as Map<String, Object?>):null,
      likes: json["likes"] as int?,
      height: json["height"] as int?,
      weight: json["weight"] as int?,
      likedByUser: json["liked_by_user"] as bool?,
      currentUserCollections: json["current_user_collection"] as List<String>?,
      sponsorship: json["sponsorship"] !=null?SponsorshipModel.fromJson(json["sponsorship"] as Map<String, Object?>):null,
    user: json["user"]!=null?UserModel.fromJson(json["user"] as Map<String, Object?>):null,
  );

  Map<String, Object?> toJson() => {
        "id ": id,
        "slug ": slug,
        "created_at ": createdAt?.toUtc().toIso8601String(),
        "updated_at ": updatedAt?.toUtc().toIso8601String(),
        "promoted_at ": promotedAt?.toUtc().toIso8601String(),
        "color ": color,
        "blur_hash ": blurHash,
        "description ": description,
        "alt_description": altDescription,
        "breadcrumbs ": breadcrumbs,
        "urls ": urls?.toJson()??{},
        "links ": links?.toJson()??{},
        "likes ": likes,
        "height ": height,
        "weight ": weight,
        "liked_by_user ": likedByUser,
        "current_user_collections": currentUserCollections,
        "sponsorship": sponsorship?.toJson()??{},
        "user":user?.toJson()??{},
      };
}

class UrlsModel {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  UrlsModel({
    this.raw,
    this.full,
    this.regular,
    this.small,
    this.thumb,
    this.smallS3,
  });

  factory UrlsModel.fromJson(Map<String, Object?> json) => UrlsModel(
        raw: json["raw"] as String?,
        full: json["full"] as String?,
        regular: json["regular"] as String?,
        small: json["small"] as String?,
        thumb: json["thumb"] as String?,
        smallS3: json["small_s3"] as String?,
      );

  Map<String, Object?> toJson() => {
        "raw": raw,
        "full": full,
        "regular": regular,
        "small": small,
        "thumb": thumb,
        "small_s3": smallS3,
      };
}

class LinksModel {
  String? self;
  String? html;
  String? download;
  String? downloadLocation;

  LinksModel({
    this.self,
    this.html,
    this.download,
    this.downloadLocation,
  });

  factory LinksModel.fromJson(Map<String, Object?> json) => LinksModel(
        self: json["self"] as String?,
        html: json["html"] as String?,
        download: json["download"] as String?,
        downloadLocation: json["download_location"] as String?,
      );

  Map<String, Object?> toJson() => {
        "self": self,
        "html": html,
        "download": download,
        "download_location": downloadLocation,
      };
}

class SponsorshipModel {
  List<dynamic>? impressionUrls;
  String? tagline;
  String? taglineUrl;
  UserModel? sponsor;

  SponsorshipModel({
    this.impressionUrls,
    this.tagline,
    this.taglineUrl,
    this.sponsor,
  });

  factory SponsorshipModel.fromJson(Map<String, Object?> json) =>
      SponsorshipModel(
        impressionUrls: json["impression_urls"] as List<dynamic>?,
        tagline: json["tagline"] as String?,
        taglineUrl: json["tagline_url"] as String?,
        sponsor: json["sponsor"] !=null?UserModel.fromJson(json["sponsor"] as Map<String, Object?>):null,
      );

  Map<String, Object?> toJson() => {
        "impression_urls": impressionUrls,
        "tagline": tagline,
        "tagline_url": taglineUrl,
        "sponsor": sponsor?.toJson()??{},
      };
}
