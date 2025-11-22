import 'package:toktik/data/models/local_video_model.dart';
import 'package:toktik/domain/datasources/local_video_posts_datasource.dart';
import 'package:toktik/domain/models/video_post.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class LocalVideoPostsDatasource implements VideoPostsDatasource {
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 2));

    // For now, return all videos. In a real app, you'd implement pagination
    final List<VideoPost> videos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostModel())
        .toList();

    return videos;
  }

  @override
  Future<List<VideoPost>> getFavoriteVideosByPage(int page) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 2));

    // For now, return empty list. In a real app, you'd fetch from local storage
    return [];
  }
}

