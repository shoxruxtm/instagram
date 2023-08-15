class UserModel {
  String? id;
  String? updatedAt;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? twitterUsername;
  String? portfolioUrl;
  String? bio;
  String? location;
  LinksModel2? links;
  ProfileImageModel? profileImage;
  String? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;

  UserModel({
    this.id,
    this.updatedAt,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.twitterUsername,
    this.portfolioUrl,
    this.bio,
    this.links,
    this.profileImage,
    this.instagramUsername,
    this.totalCollections,
    this.totalLikes,
    this.totalPhotos,
  });

  factory UserModel.fromJson(Map<String, Object?> json) => UserModel(
    id: json["id"] as String?,
    updatedAt: json["updated_at"] as String?,
    username: json["username"] as String?,
    name: json["name"] as String?,
    firstName: json["first_name"] as String?,
    lastName: json["last_name"] as String?,
    twitterUsername: json["twitter_username"] as String?,
    portfolioUrl: json["portfolio_url"] as String?,
    bio: json["bio"] as String?,
    links: json["links"] !=null?LinksModel2.fromJson(json["links"] as Map<String, Object?>):null,
    profileImage: json["profile_image"] !=null?ProfileImageModel.fromJson(json["profile_image"] as Map<String, Object?>):null,
    instagramUsername: json["instagram_username"] as String?,
    totalCollections: json["total_collections"] as int?,
    totalLikes: json["total_likes"] as int?,
    totalPhotos: json["total_photos"] as int?,
  );

  Map<String, Object?> toJson() => {
    "id": id,
    "updated_at": updatedAt,
    "username": username,
    "name": name,
    "first_name": firstName,
    "last_name": lastName,
    "twitter_username": totalLikes,
    "portfolio_url": portfolioUrl,
    "bio": bio,
    "links": links?.toJson()??{},
    "profile_image": profileImage?.toJson()??{},
    "instagram_username": instagramUsername,
    "total_collections": totalCollections,
    "total_likes": totalLikes,
    "total_photos": totalPhotos,
  };
}

class LinksModel2 {
  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;
  String? following;
  String? followers;

  LinksModel2({
    this.self,
    this.html,
    this.photos,
    this.likes,
    this.portfolio,
    this.following,
    this.followers,
  });

  factory LinksModel2.fromJson(Map<String, Object?> json) => LinksModel2(
    self: json["self"] as String?,
    html: json["html"] as String?,
    photos: json["photos"] as String?,
    likes: json["likes"] as String?,
    portfolio: json["portfolio"] as String?,
    following: json["following"] as String?,
    followers: json["followers"] as String?,
  );

  Map<String, Object?> toJson() => {
    "self": self,
    "html": html,
    "photos": photos,
    "likes": likes,
    "portfolio": portfolio,
    "following": following,
    "followers": followers,
  };
}

class ProfileImageModel {
  String? small;
  String? medium;
  String? large;

  ProfileImageModel({
    this.small,
    this.medium,
    this.large,
  });

  factory ProfileImageModel.fromJson(Map<String, Object?> json) =>
      ProfileImageModel(
        small: json["small"] as String?,
        medium: json["medium"] as String?,
        large: json["large"] as String?,
      );

  Map<String, Object?> toJson() => {
    "small": small,
    "medium": medium,
    "large": large,
  };
}
