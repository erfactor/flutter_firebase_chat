import 'package:firebase_chat/presentation/widget/basic/basic.dart';

class FilledButton extends StatelessWidget {
  const FilledButton({required this.text, required this.onTap, this.color = Styles.green, this.enabled = true, this.loading = false});
  final String text;
  final VoidCallback onTap;
  final Color color;
  final bool enabled;
  final bool loading;

  @override
  Widget build(final BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        primary: color,
      ),
      onPressed: enabled && !loading ? onTap : null,
      child: loading ? buildLoader() : buildText(),
    ).size(width: double.infinity, height: 48);
  }

  Widget buildLoader() => const CircularProgressIndicator(strokeWidth: 2, color: Styles.background).squared(24);
  Text buildText() => Text(text.toUpperCase(), style: TS.bold16White, textAlign: TextAlign.center);
}
