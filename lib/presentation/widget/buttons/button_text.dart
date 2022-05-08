import 'package:firebase_chat/presentation/widget/basic/basic.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15 + 2 * 8,
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 0)),
        child: Text(text.toUpperCase(), style: TS.bold12Green2),
      ),
    );
  }
}
