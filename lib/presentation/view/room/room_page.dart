import 'package:firebase_chat/presentation/widget/avatar.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/data/model/message.dart';
import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/data/repository/room_repository.dart';
import 'package:firebase_chat/data/repository/rooms_providers.dart';
import 'package:firebase_chat/presentation/widget/future_provider_view.dart';
import 'package:flutter/material.dart';

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

class _SendMessageRow extends HookWidget {
  const _SendMessageRow({required this.roomId});
  final String roomId;

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    return RowMax(children: [
      Width16,
      TextField(controller: textController).expanded,
      Width12,
      IconButton(
        onPressed: () {
          sl<RoomRepository>().createMessage(
            roomId,
            Message(
              text: textController.value.text,
              user: FirebaseAuth.instance.currentUser!.displayName ?? '',
              avatarUrl: FirebaseAuth.instance.currentUser!.photoURL,
              createdAt: DateTime.now(),
            ),
          );
          textController.text = '';
        },
        icon: const Icon(Icons.send),
      )
    ]).padVertical(24).colored(Colors.white12);
  }
}

class _MessagesView extends StatelessWidget {
  const _MessagesView(this.rooms);
  final List<Message> rooms;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: rooms.length,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      itemBuilder: (context, index) {
        final message = rooms[index];
        return Card(
          clipBehavior: Clip.antiAlias,
          child: ListTile(
            title: Text(message.user),
            subtitle: Text(message.text).padVertical4,
            trailing: Avatar(url: message.avatarUrl),
          ),
        );
      },
    );
  }
}
