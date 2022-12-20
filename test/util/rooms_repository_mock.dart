import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/data/repository/rooms_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

class RoomsRepositoryMock extends Mock implements RoomsRepository {
  // ignore: close_sinks, in test
  final roomsSubject = BehaviorSubject.seeded(<Room>[]);

  @override
  Stream<List<Room>> getRooms() => roomsSubject;

  @override
  Future<void> createRoom(Room room) async => roomsSubject.add([room]);
}
