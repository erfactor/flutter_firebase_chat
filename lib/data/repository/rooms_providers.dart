import 'package:firebase_chat/data/model/message.dart';
import 'package:firebase_chat/data/repository/room_repository.dart';
import 'package:firebase_chat/data/repository/rooms_repository.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';

final roomsProvider = StreamProvider((_) => sl<RoomsRepository>().getRooms());

final roomMessagesProvider = StreamProvider.autoDispose.family<List<Message>, String>(
  (_, roomId) => sl<RoomRepository>().getMessages(roomId),
);
