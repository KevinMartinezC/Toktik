import 'package:toktik/domain/datasources/local_video_posts_datasource.dart';
import 'package:toktik/domain/models/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostsRepository {
  final VideoPostsDatasource datasource;

  VideoPostsRepositoryImpl({required this.datasource});
  
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return datasource.getTrendingVideosByPage(page);
  }

  @override
  Future<List<VideoPost>> getFavoriteVideosByPage(int page) {
    return datasource.getFavoriteVideosByPage(page);
  }
}
