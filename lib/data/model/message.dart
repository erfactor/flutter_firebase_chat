// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

DateTime _dateFromJson(Timestamp timestamp) => timestamp.toDate();
Timestamp _dateToJson(DateTime date) => Timestamp.fromDate(date);

@freezed
class Message with _$Message {
  const factory Message({
    required String text,
    required String user,
    @JsonKey(fromJson: _dateFromJson, toJson: _dateToJson) required DateTime createdAt,
    required String? avatarUrl,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}
