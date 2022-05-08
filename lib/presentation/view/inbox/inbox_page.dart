import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/data/repository/rooms_providers.dart';
import 'package:firebase_chat/data/repository/rooms_repository.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/presentation/widget/custom/enter_text_dialog.dart';
import 'package:firebase_chat/presentation/widget/future_provider_view.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  const InboxPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
        centerTitle: true,
        actions: [
          TextButton(onPressed: FirebaseAuth.instance.signOut, child: const Text('Sign out')),
        ],
      ),
      body: FutureProviderView(
        provider: roomsProvider,
        builder: _RoomsView.new,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog<String>(
            context: context,
            builder: (context) => const EnterTextDialog(),
          ).then((roomName) {
            if (roomName != null) {
              return sl<RoomsRepository>().createRoom(Room(name: roomName));
            }
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _RoomsView extends StatelessWidget {
  const _RoomsView(this.rooms);
  final List<Room> rooms;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: rooms.length,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      itemBuilder: (context, index) {
        final room = rooms[index];
        return Card(
          clipBehavior: Clip.antiAlias,
          child: ListTile(
            onTap: () {},
            title: Text(room.name),
          ),
        );
      },
    );
  }
}
