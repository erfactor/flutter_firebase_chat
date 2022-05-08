import 'package:firebase_chat/presentation/widget/basic/basic.dart';

class PopupButton extends StatelessWidget {
  const PopupButton({required this.text, required this.onTap, this.icon, this.textStyle});
  final String text;
  final VoidCallback onTap;
  final String? icon;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Styles.background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32), side: const BorderSide(color: Styles.grey)),
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: 56,
        child: InkWell(
          onTap: onTap,
          child: RowMax(children: [
            Width16,
            Text(text, style: textStyle ?? TS.medium16),
            const Spacer(),
            if (icon != null) SvgIcon(icon!),
            Width16,
          ]),
        ),
      ),
    );
  }
}
