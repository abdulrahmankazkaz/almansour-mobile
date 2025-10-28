import 'package:flutter/material.dart';

class ImageViewWidget extends StatefulWidget {
  final ImageProvider imageProvider;

  const ImageViewWidget({super.key, required this.imageProvider});

  @override
  State<ImageViewWidget> createState() => _ImageViewWidgetState();
}

class _ImageViewWidgetState extends State<ImageViewWidget> {
  double _scale = 1.0;
  final double _maxScale = 5.0;

  @override
  Widget build(BuildContext context) {
    //create image viewer with zoom in and zoom out
    return Stack(
      children: [
        Center(
          child: GestureDetector(
            onDoubleTap: () {
              setState(() {
                _scale = _scale == 1.0 ? 2.0 : 1.0;
              });
            },
            child: InteractiveViewer(
              trackpadScrollCausesScale: true,
              minScale: 0.5,
              scaleEnabled: true,
              maxScale: 5,
              transformationController: TransformationController()
                ..value = Matrix4.diagonal3Values(_scale, _scale, 1.0),
              child: Image(
                image: widget.imageProvider,
                fit: BoxFit.contain,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
