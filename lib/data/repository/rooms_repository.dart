import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/presentation/widget/basic/extensions/iterable_extension.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class RoomsRepository {
  final _firestore = FirebaseFirestore.instance;
  RoomsRepository();

  Stream<List<Room>> getRooms() {
    return _firestore //
        .collection('rooms')
        .withConverter<Room>(fromFirestore: (snapshot, _) => Room.fromJson(snapshot.data()!), toFirestore: (_, __) => {})
        .snapshots()
        .map((snapshot) => snapshot.docs.mapList((document) => document.data()));
  }
}
