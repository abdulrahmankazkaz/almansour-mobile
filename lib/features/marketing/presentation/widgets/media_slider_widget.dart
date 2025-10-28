import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/utils/resources/resources.dart';
import '../../../../widgets/image_widgets/image_widget.dart';
import '../../entities/promotions_entities/media/media.dart';
import 'video_player_widget.dart';

class MediaSliderWidget extends StatefulWidget {
  final Media media;
  final double? height;
  final void Function()? onImageTap;
  const MediaSliderWidget({
    required this.media,
    this.height,
    this.onImageTap,
    super.key,
  });

  @override
  _MediaSliderWidgetState createState() => _MediaSliderWidgetState();
}

class _MediaSliderWidgetState extends State<MediaSliderWidget> {
  late List<VideoPlayerController> _controllers;
  late List<Future<void>> _initializeVideoPlayerFutures;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controllers = widget.media.videos.map((video) => VideoPlayerController.networkUrl(Uri.parse(video))).toList();
    _initializeVideoPlayerFutures = _controllers.map((controller) => controller.initialize()).toList();
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void onPageChanged(int index,_) {
    if (index >= widget.media.images.length && _controllers[_currentIndex].value.isPlaying) {
      _controllers[_currentIndex].pause();
    }
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height?? MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: [
          Expanded(
            child: CarouselSlider.builder(
              itemCount: widget.media.videos.length + widget.media.images.length,
              itemBuilder: (context, index, realIndex) {
                if (index < widget.media.images.length) {
                  return InkWell(
                    onTap: widget.onImageTap,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppSizeR.s15),
                      child: ImageWidget(
                        url: widget.media.images[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                } else {
                  final videoIndex = index - widget.media.images.length;
                  return VideoPlayerWidget(
                    video: widget.media.videos[videoIndex],
                    controller: _controllers[videoIndex],
                    initializeVideoPlayerFuture: _initializeVideoPlayerFutures[videoIndex],
                  );
                }
              },
              options: CarouselOptions(
                enableInfiniteScroll: false,
                height: AppSizeH.s200,
                viewportFraction: 0.8,
                enlargeCenterPage: true,
                disableCenter: true,
                onPageChanged: onPageChanged,
              ),
            ),
          ),
        ],
      ),
    );
  }
}