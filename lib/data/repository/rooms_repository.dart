import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/data/services/firestore_provider.dart';
import 'package:flutter_utils/flutter_utils.dart';

final roomsRepositoryProvider = Provider(RoomsRepository.new);

class RoomsRepository {
  RoomsRepository(this.ref);
  final Ref ref;

  late final collectionReference = ref
      .watch(firestoreProvider) //
      .collection('rooms')
      .withConverter<Room>(
        fromFirestore: (snapshot, _) => Room.fromJson(snapshot.data()!).copyWith(id: snapshot.id),
        toFirestore: (room, __) => room.toJson(),
      );

  Stream<List<Room>> getRooms() {
    return collectionReference.snapshots().map((snapshot) => snapshot.docs.mapList((document) => document.data()));
  }

  Future<void> createRoom(Room room) {
    return collectionReference.add(room);
  }
}
