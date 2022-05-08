import 'package:firebase_chat/presentation/widget/basic/basic.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({required this.text, required this.icon, required this.onTap, this.color = Styles.black});
  final String text;
  final String icon;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      clipBehavior: Clip.antiAlias,
      color: color,
      child: InkWell(
        onTap: onTap,
        child: RowMin(children: [
          Width16,
          Text(text.toUpperCase(), style: TS.bold12White),
          Width8,
          SvgIcon(icon, color: Styles.background),
          Width8,
        ]).padVertical4,
      ),
    );
  }
}
