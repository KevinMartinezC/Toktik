import 'package:flutter/material.dart';
import 'package:toktik/domain/models/video_post.dart';
import 'package:toktik/presentation/widgets/full_screen_player.dart';
import 'package:toktik/presentation/widgets/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final videoPost = videos[index];

        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(
                captions: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
            ),

            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost)
              )
          ],
        );
      },
    );
  }
}

// Doing in this way would load all the items causing performance issues 
//  @override
//   Widget build(BuildContext context) {
//     return PageView(
//       scrollDirection: Axis.vertical,
//       physics: const BouncingScrollPhysics(),
//       children: [
//         Container(color: Colors.red),
//         Container(color: Colors.blue),
//         Container(color: Colors.teal),
//       ],
//     );
//   }
