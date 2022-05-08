import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_chat/data/model/message.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class RoomRepository {
  RoomRepository();
  final _firestore = FirebaseFirestore.instance;
  CollectionReference<Message> collectionReference(String roomId) {
    return _firestore //
        .collection('rooms')
        .doc(roomId)
        .collection('messages')
        .withConverter<Message>(
          fromFirestore: (snapshot, _) => Message.fromJson(snapshot.data()!),
          toFirestore: (message, __) => message.toJson(),
        );
  }

  Stream<List<Message>> getMessages(String roomId) {
    return collectionReference(roomId).snapshots().map((snapshot) => snapshot.docs.mapList((document) => document.data()));
  }

  Future createMessage(String roomId, Message message) {
    return collectionReference(roomId).add(message);
  }
}
