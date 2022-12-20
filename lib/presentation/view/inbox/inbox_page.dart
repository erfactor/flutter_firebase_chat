import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/data/repository/rooms_providers.dart';
import 'package:firebase_chat/data/repository/rooms_repository.dart';
import 'package:firebase_chat/presentation/view/inbox/create_room_dialog.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/presentation/widget/future_provider_view.dart';

class InboxPage extends ConsumerWidget {
  const InboxPage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
        actions: [
          OutlinedButton(
            onPressed: () => const ProfileRoute().go(context),
            style: OutlinedButton.styleFrom(backgroundColor: themeData.colorScheme.secondary),
            child: Text('PROFILE', style: themeData.textTheme.button?.copyWith(color: themeData.colorScheme.onSecondary)),
          ).padAll8,
        ],
      ),
      body: FutureProviderView(provider: roomsProvider, builder: _RoomsView.new),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => showDialog<String>(
          context: context,
          builder: (context) => const CreateRoomDialog(),
        ).then(
          (roomName) {
            if (roomName != null) {
              ref.read(roomsRepositoryProvider).createRoom(Room(name: roomName));
            }
          },
        ),
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
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (context, index) {
        final room = rooms[index];

        return Card(
          clipBehavior: Clip.hardEdge,
          child: SizedBox(
            height: 52,
            child: InkWell(
              onTap: () async => RoomRoute(id: room.id!, name: room.name).go(context),
              child: Text(room.name, style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold)).padAll8,
            ),
          ),
        );
      },
      separatorBuilder: (_, __) => Height4,
      itemCount: rooms.length,
    );
  }
}
