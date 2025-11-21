
import 'package:flutter/material.dart';
import 'package:toktik/domain/models/video_post.dart';

class DiscoverViewModel extends ChangeNotifier {

  bool initialLoading = true;
  List<VideoPost> vidoes = [];

  Future<void> loadNextPage() async {
    //Load vidoes
    notifyListeners();
  }

}
