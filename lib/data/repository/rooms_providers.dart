import 'package:firebase_chat/data/repository/rooms_repository.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';

final roomsProvider = StreamProvider((_) => sl<RoomsRepository>().getRooms());
