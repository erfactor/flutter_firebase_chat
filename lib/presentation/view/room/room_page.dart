import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/data/repository/rooms_providers.dart';
import 'package:firebase_chat/presentation/widget/future_provider_view.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  const InboxPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inbox er')),
      body: FutureProviderView(
        provider: roomsProvider,
        builder: _RoomsView.new,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
