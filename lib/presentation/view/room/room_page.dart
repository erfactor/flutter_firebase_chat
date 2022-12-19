import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/data/model/message.dart';
import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/data/repository/room_repository.dart';
import 'package:firebase_chat/data/repository/rooms_providers.dart';
import 'package:firebase_chat/presentation/widget/avatar.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/presentation/widget/future_provider_view.dart';

class RoomPage extends StatelessWidget {
  const RoomPage(this.room);
  final Room room;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(room.name)),
      body: ColumnMax(
        children: [
          FutureProviderView(
            provider: roomMessagesProvider(room.id!),
            builder: _MessagesView.new,
          ).expanded,
          _SendMessageRow(roomId: room.id!),
        ],
      ),
    );
  }
}

class _SendMessageRow extends StatefulHookConsumerWidget {
  const _SendMessageRow({required this.roomId});
  final String roomId;

  @override
  createState() => _SendMessageRowState();
}

class _SendMessageRowState extends ConsumerState<_SendMessageRow> {
  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    return Material(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Container(
        decoration: BoxDecoration(border: Border(top: BorderSide())),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: RowMax(
          children: [
            Width12,
            TextField(
              minLines: 1,
              maxLines: 3,
              controller: textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Theme.of(context).colorScheme.background,
                hintText: 'Aa',
              ),
            ).expanded,
            Width4,
            buildSendIcon(textController),
            Width4,
          ],
        ),
      ),
    );
  }

  Widget buildSendIcon(TextEditingController textController) {
    return ValueListenableBuilder(
      valueListenable: textController,
      builder: (_, text, ___) {
        var isTextBlank = text.text.isBlank;
        return IconButton(
          onPressed: isTextBlank
              ? null
              : () async {
                  final currentUser = FirebaseAuth.instance.currentUser!;
                  await ref.read(roomRepositoryProvider).createMessage(
                        widget.roomId,
                        Message(
                          text: textController.value.text,
                          user: currentUser.displayName ?? '',
                          createdAt: DateTime.now(),
                          avatarUrl: currentUser.photoURL,
                        ),
                      );
                  textController.text = '';
                },
          icon: Icon(Icons.send_rounded, color: isTextBlank ? Theme.of(context).disabledColor : Theme.of(context).colorScheme.primary),
        );
      },
    );
  }
}

class _MessagesView extends StatelessWidget {
  const _MessagesView(this.rooms);
  final List<Message> rooms;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      reverse: true,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      itemBuilder: (context, index) => _MessageView(message: rooms[index]),
      separatorBuilder: (_, __) => Height4,
      itemCount: rooms.length,
    );
  }
}

class _MessageView extends StatelessWidget {
  const _MessageView({required this.message});
  final Message message;

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    final isMe = message.user == user.displayName && user.photoURL == message.avatarUrl;

    return Padding(
      padding: EdgeInsets.only(left: isMe ? 40 : 0, right: isMe ? 0 : 40),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: ListTile(
          title: Text(message.text).padVertical4,
          subtitle: Text(message.user),
          trailing: Avatar(url: message.avatarUrl),
        ),
      ),
    );
  }
}
