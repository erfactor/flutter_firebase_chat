import 'package:firebase_chat/presentation/widget/basic/basic.dart';

class Separator extends StatelessWidget {
  const Separator({this.pad = true});
  final bool pad;

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, height: 1, color: Styles.grey).padVertical(pad ? 24 : 0);
  }
}

class Header extends StatelessWidget {
  const Header(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TS.medium18);
  }
}
