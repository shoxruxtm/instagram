import 'dart:convert';

import '../../../common/constants/api_constants.dart';
import '../../../common/service/api_service.dart';
import '../model/photo_model.dart';

abstract interface class IPostRepository {
  const IPostRepository();

  Future<List<PhotoModel>> getPhotos();
}

class PostRepositoryImpl extends IPostRepository {
  final APIService apiService;

  PostRepositoryImpl(this.apiService);

  @override
  Future<List<PhotoModel>> getPhotos() async {
    String response = await apiService.request(ApiConst.photosPath, headers: {
      "Authorization": "Client-ID ${ApiConst.apiKey}"
    });

    List<PhotoModel> photos =
        List<Map<String, Object?>>.from(jsonDecode(response))
            .map(PhotoModel.fromJson)
            .toList();
    return photos;
  }
}
