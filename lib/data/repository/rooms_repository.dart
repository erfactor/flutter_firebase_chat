import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_chat/data/model/room.dart';
import 'package:flutter_utils/flutter_utils.dart';

final roomsRepositoryProvider = Provider((_) => RoomsRepository());

class RoomsRepository {
  RoomsRepository();
  final _firestore = FirebaseFirestore.instance;
  late final collectionReference = _firestore //
      .collection('rooms')
      .withConverter<Room>(
        fromFirestore: (snapshot, _) {
          return Room.fromJson(snapshot.data()!).copyWith(id: snapshot.id);
        },
        toFirestore: (room, __) => room.toJson(),
      );

  Stream<List<Room>> getRooms() {
    return collectionReference.snapshots().map((snapshot) => snapshot.docs.mapList((document) => document.data()));
  }

  Future<void> createRoom(Room room) {
    return collectionReference.add(room);
  }
}
