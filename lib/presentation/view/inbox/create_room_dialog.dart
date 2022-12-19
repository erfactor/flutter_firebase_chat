import 'package:firebase_chat/presentation/widget/basic/basic.dart';

class CreateRoomDialog extends HookWidget {
  const CreateRoomDialog();

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    return AlertDialog(
      content: ColumnMin(
        cross: CrossAxisAlignment.start,
        children: [
          Text('Create a room', style: Theme.of(context).textTheme.headline5),
          Height8,
          TextField(
            controller: textController,
            decoration: InputDecoration(
              label: Text('name'),
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: Navigator.of(context).pop,
          child: Text('CANCEL', style: TextStyle(color: Colors.red.shade700)),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop<String>(textController.value.text),
          child: Text('CREATE', style: Theme.of(context).textTheme.button?.copyWith(color: Colors.green.shade800)),
        ),
      ],
    );
  }
}
