import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/data/repository/rooms_providers.dart';
import 'package:firebase_chat/data/repository/rooms_repository.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/presentation/view/inbox/create_room_dialog.dart';
import 'package:firebase_chat/presentation/widget/future_provider_view.dart';

class InboxPage extends ConsumerWidget {
  const InboxPage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
        actions: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.secondary),
            onPressed: () => ProfileRoute().go(context),
            child: Text(
              'PROFILE',
              style: Theme.of(context).textTheme.button?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
            ),
          ).padAll8,
        ],
      ),
      body: FutureProviderView(
        provider: roomsProvider,
        builder: _RoomsView.new,
      ),
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
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      itemBuilder: (context, index) {
        final room = rooms[index];

        return Card(
          clipBehavior: Clip.antiAlias,
          child: ListTile(
            title: Text(room.name),
            onTap: () async => RoomRoute(id: room.id!, name: room.name).go(context),
          ),
        );
      },
      itemCount: rooms.length,
    );
  }
}
