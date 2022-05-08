import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

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
    return CachedNetworkImage(
      width: size,
      height: size,
      imageUrl: url!,
      filterQuality: FilterQuality.none,
      placeholder: (context, url) {
        return const ShimmerView();
      },
      fadeInDuration: 0.milliseconds,
      fadeOutDuration: 0.milliseconds,
      imageBuilder: (context, imageProvider) => AspectRatio(
        aspectRatio: 1.0,
        child: Container(
          decoration: BoxDecoration(image: DecorationImage(image: imageProvider, fit: BoxFit.cover)),
        ),
      ),
    );
  }
}

class _ImagePlaceholder extends StatelessWidget {
  const _ImagePlaceholder({required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: size,
      height: size,
      padding: EdgeInsets.all(size / 4),
      child: const Icon(Icons.camera),
    );
  }
}

class ShimmerView extends StatelessWidget {
  const ShimmerView({this.radius = 0});
  final double radius;

  @override
  Widget build(BuildContext context) {
    const baseColor = Color(0xFFF2F2F2);
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: baseColor,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
