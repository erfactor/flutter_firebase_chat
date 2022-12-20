import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/data/repository/rooms_providers.dart';
import 'package:firebase_chat/data/repository/rooms_repository.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:flutter_test/flutter_test.dart';

import 'util/rooms_repository_mock.dart';

void main() {
  test('When creating a new room in $RoomsRepository Then this room is returned from $roomsProvider', () async {
    final container = ProviderContainer(
      overrides: [
        roomsRepositoryProvider.overrideWithValue(RoomsRepositoryMock()),
      ],
    );

    final data = container.listen(roomsProvider.stream, (previous, next) {}).read();
    var room = Room(name: 'room');
    container.read(roomsRepositoryProvider).createRoom(room);

    expect(
        data,
        emitsInOrder([
          [],
          [room]
        ]));
  });
}
