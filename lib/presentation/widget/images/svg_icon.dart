import 'package:firebase_chat/presentation/widget/basic/basic.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon(this.path, {this.color = Styles.black, this.width});
  final String path;
  final Color? color;
  final double? width;

  const SvgIcon.white(this.path, {this.width}) : color = Styles.background;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      color: color,
      width: width,
    );
  }
}

class FilledIcon extends StatelessWidget {
  const FilledIcon(this.path, {this.width = 40});
  final String path;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: width,
    );
  }
}
