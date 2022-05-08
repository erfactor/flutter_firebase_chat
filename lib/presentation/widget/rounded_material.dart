import 'package:firebase_chat/presentation/widget/basic/basic.dart';

class RoundedMaterial extends StatelessWidget {
  const RoundedMaterial({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Colors.purple,
      color: Styles.background,
      borderRadius: BorderRadius.circular(4),
      clipBehavior: Clip.antiAlias,
      child: child,
    );
  }
}
