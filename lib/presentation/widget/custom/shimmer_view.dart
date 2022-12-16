import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerView extends StatelessWidget {
  const ShimmerView();

  @override
  Widget build(BuildContext context) {
    const baseColor = Color(0xFFF2F2F2);

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: Colors.white,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: baseColor,
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
