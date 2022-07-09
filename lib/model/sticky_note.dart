import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'sticky_note.freezed.dart';
part 'sticky_note.g.dart';

@freezed
class StickyNote with _$StickyNote {
  factory StickyNote({
    required String id,
    required String category,
    required String title,
    required String description,
  }) = _StickyNote;

  factory StickyNote.fromJson(Map<String, Object?> json) =>
      _$StickyNoteFromJson(json);
}
