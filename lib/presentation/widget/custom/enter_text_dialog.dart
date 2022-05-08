import 'package:firebase_chat/presentation/widget/basic/basic.dart';

class EnterTextDialog extends HookWidget {
  const EnterTextDialog();

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    return AlertDialog(
      content: ColumnMin(
        children: [
          const Text('Enter text'),
          TextField(controller: textController),
        ],
      ),
      actions: [
        TextButton(
          onPressed: Navigator.of(context).pop,
          child: const Text('Cancel', style: TextStyle(color: Styles.red)),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop<String>(textController.value.text),
          child: const Text('Confirm', style: TextStyle(color: Styles.green)),
        ),
      ],
    );
  }
}
