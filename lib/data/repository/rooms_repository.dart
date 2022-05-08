import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/presentation/widget/basic/extensions/iterable_extension.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class RoomsRepository {
  RoomsRepository();
  final _firestore = FirebaseFirestore.instance;
  late final collectionReference = _firestore //
      .collection('rooms')
      .withConverter<Room>(fromFirestore: (snapshot, _) => Room.fromJson(snapshot.data()!), toFirestore: (room, __) => room.toJson());

  Stream<List<Room>> getRooms() {
    return collectionReference.snapshots().map((snapshot) => snapshot.docs.mapList((document) => document.data()));
  }

  Future createRoom(Room room) {
    return collectionReference.add(room);
  }
}
