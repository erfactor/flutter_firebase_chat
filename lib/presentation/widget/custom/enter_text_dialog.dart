import 'package:firebase_chat/presentation/widget/basic/basic.dart';

class EnterTextDialog extends HookWidget {
  const EnterTextDialog();

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    return AlertDialog(
      content: ColumnMin(
        children: [
          const Text('Enter room name'),
          TextField(controller: textController),
        ],
      ),
      actions: [
        TextButton(
          onPressed: Navigator.of(context).pop,
          child: Text('Cancel', style: TextStyle(color: Colors.red.shade700)),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop<String>(textController.value.text),
          child: Text('Confirm', style: TextStyle(color: Colors.green.shade800)),
        ),
      ],
    );
  }
}
