import 'package:firebase_chat/presentation/widget/basic/basic.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon(this.path, {this.color = Styles.black, this.width});

  const SvgIcon.white(this.path, {this.width}) : color = Styles.background;
  final String path;
  final Color? color;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(path, width: width, color: color);
  }
}
