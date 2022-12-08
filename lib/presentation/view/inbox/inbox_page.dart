import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/data/repository/rooms_providers.dart';
import 'package:firebase_chat/presentation/view/sign_in/sign_in_page.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/presentation/widget/future_provider_view.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/firebasedynamiclinks/v1.dart';

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
        onPressed: () async {
          // final account = await gsi.si();
          // print('[L] ${DateTime.now()} account: $account');
          final user = await gsi.signIn();
          print('[L] ${DateTime.now()} user: $user');
          print('[L] ${DateTime.now()} gsi.currentUser.email: ${user?.email}');

          var client = await gsi.authenticatedClient();
          if (client == null) {
            print('[L] ${DateTime.now()}: null client');
            return;
          }
          print('[L] ${DateTime.now()} client: ${client.credentials.accessToken}');
          final linkResponse = await FirebaseDynamicLinksApi(
            client,
          ).shortLinks.create(CreateShortDynamicLinkRequest(
                  dynamicLinkInfo: DynamicLinkInfo(
                domainUriPrefix: 'https://chat4321.page.link',
                link: 'https://google.com',
              )));
          print('[L] ${DateTime.now()} linkResponse: ${linkResponse.shortLink}');
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
            onTap: () => Navigator.of(context).pushNamed(Routes.room, arguments: room),
            title: Text(room.name),
          ),
        );
      },
    );
  }
}
