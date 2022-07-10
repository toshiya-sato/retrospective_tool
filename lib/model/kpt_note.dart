import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'kpt_note.freezed.dart';
part 'kpt_note.g.dart';

@freezed
class KptNote with _$KptNote {
  factory KptNote({
    required String id,
    required String category,
    required String title,
    required String description,
  }) = _KptNote;

  factory KptNote.fromJson(Map<String, Object?> json) =>
      _$KptNoteFromJson(json);
}
