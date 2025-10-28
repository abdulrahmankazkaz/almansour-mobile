import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/utils/resources/resources.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String video;
  final VideoPlayerController controller;
  final Future<void> initializeVideoPlayerFuture;

  const VideoPlayerWidget({
    required this.video,
    required this.controller,
    required this.initializeVideoPlayerFuture,
    super.key,
  });

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return AspectRatio(
            aspectRatio: widget.controller.value.aspectRatio,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSizeR.s15),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (widget.controller.value.isPlaying) {
                      widget.controller.pause();
                    } else {
                      widget.controller.play();
                    }
                  });
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    VideoPlayer(widget.controller),
                    AnimatedOpacity(
                      opacity: widget.controller.value.isPlaying ? 0.0 : 1.0,
                      duration: const Duration(milliseconds: 300),
                      child: Container(
                        padding: EdgeInsets.all(AppSizeW.s6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppSizeR.s15),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: Icon(
                          widget.controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          size: AppSizeW.s50,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}