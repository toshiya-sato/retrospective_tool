import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrospective_tool/model/kpt_note.dart';

class KptNoteListNotifer extends StateNotifier<List<KptNote>> {
  KptNoteListNotifer() : super(<KptNote>[]);

  // KPT付箋の追加
  void addNote(KptNote kptNote) {
    state = [...state, kptNote];
  }

  void updateNote(
      String id, String category, String title, String description) {
    state = state.map((kptList) {
      if (kptList.id == id) {
        return kptList.copyWith(
            category: category, title: title, description: description);
      }
      return kptList;
    }).toList();
  }

  // KPT付箋の削除
  void removeNote(String id) {
    state = [
      for (final kptNote in state)
        if (kptNote.id != id) kptNote,
    ];
  }
}

final kptNoteListProvider =
    StateNotifierProvider<KptNoteListNotifer, List<KptNote>>((ref) {
  return KptNoteListNotifer();
});
