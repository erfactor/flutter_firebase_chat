import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartx/dartx.dart';
import 'package:firebase_chat/presentation/widget/custom/shimmer_view.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({required this.url, this.size = 40, this.onTap});
  final String? url;
  final VoidCallback? onTap;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        child: InkWell(
          onTap: Feedback.wrapForTap(onTap, context),
          child: AbsorbPointer(
            child: url == null ? _ImagePlaceholder(size: size) : buildImage(),
          ),
        ),
      ),
    );
  }

  Widget buildImage() {
    final fadeDuration = 0.milliseconds;

    return CachedNetworkImage(
      imageUrl: url!,
      imageBuilder: (context, imageProvider) => AspectRatio(
        aspectRatio: 1,
        child: DecoratedBox(decoration: BoxDecoration(image: DecorationImage(image: imageProvider, fit: BoxFit.cover))),
      ),
      placeholder: (context, url) {
        return const ShimmerView();
      },
      fadeOutDuration: fadeDuration,
      // ignore: no-equal-arguments, external widget
      fadeInDuration: fadeDuration,
      width: size,
      height: size,
      filterQuality: FilterQuality.none,
    );
  }
}

class _ImagePlaceholder extends StatelessWidget {
  const _ImagePlaceholder({required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(size / 4),
      color: Colors.grey,
      width: size,
      height: size,
      child: const Icon(Icons.camera),
    );
  }
}
