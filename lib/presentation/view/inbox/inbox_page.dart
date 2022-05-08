import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/data/repository/rooms_providers.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/presentation/widget/future_provider_view.dart';
import 'package:firebase_chat/presentation/widget/page_app_bar.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  const InboxPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageAppBar(text: 'Inbox'),
      body: FutureProviderView(
        provider: roomsProvider,
        builder: (List<Room> rooms) {
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
        },
      ),
    );
  }
}
