import 'package:toktik/domain/models/video_post.dart';

abstract class VideoPostsDatasource {
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
  Future<List<VideoPost>> getFavoriteVideosByPage(int page);
}
