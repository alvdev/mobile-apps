import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons_widget.dart';
import 'package:toktik/presentation/widgets/shared/video/fullscreen_player.dart';

class VideoScrollableViewWidget extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableViewWidget({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            SizedBox.expand(
              child: FullscreenPlayer(
                  caption: videoPost.name, videoUrl: videoPost.videoUrl),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: VideoButtonsWidget(video: videoPost),
            ),
          ],
        );
      },
    );
  }
}
