
import 'package:flutter/material.dart';
import 'package:toktik/data/models/local_video_model.dart';
import 'package:toktik/domain/models/video_post.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class DiscoverViewModel extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostModel())
        .toList();

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
