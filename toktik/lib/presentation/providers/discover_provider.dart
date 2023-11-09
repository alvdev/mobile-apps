import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/shared/data/local_video_posts.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';

class DiscoverProvider extends ChangeNotifier {
  // TODO: Repository, DataSource

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    // TODO: Load next page
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> fetchedVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videos.addAll(fetchedVideos);
    initialLoading = false;
    notifyListeners();
  }
}
