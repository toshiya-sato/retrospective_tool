import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrospective_tool/model/kpt_note.dart';
import 'package:retrospective_tool/state/kpt_note_list.state.dart';
import 'package:retrospective_tool/utils/kpt_note_util.dart';
import 'package:uuid/uuid.dart';

const _selectCategory = 'Keep';
final categoryProvider = StateProvider<String>((ref) {
  return _selectCategory;
});

class InputForm extends HookConsumerWidget {
  InputForm({Key? key}) : super(key: key) {
    _formKey = GlobalKey<FormState>();
  }
  late final _formKey;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleFormControll = useTextEditingController();
    final descriptionFormControll = useTextEditingController();
    String selectCategory = ref.watch(categoryProvider);

    return Scaffold(
        backgroundColor: KptNoteUtil.getColor(selectCategory),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                DropdownSearch<String>(
                  selectedItem: selectCategory,
                  onChanged: (String? newValue) {
                    ref.read(categoryProvider.notifier).state = newValue!;
                    debugPrint(selectCategory);
                  },
                  items: const <String>[
                    'Keep',
                    'Problem',
                    'Try',
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Categoryは必ず選択してください';
                    }
                    return null;
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                TextFormField(
                  controller: titleFormControll,
                  decoration: const InputDecoration(
                    labelText: 'Title',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Titleは必ず入力してください';
                    }
                    return null;
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                TextFormField(
                  controller: descriptionFormControll,
                  minLines: 10,
                  maxLines: 10,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Descriptionは必ず入力してください';
                    }
                    return null;
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _registerKptNote(
                            ref,
                            selectCategory,
                            titleFormControll.text,
                            descriptionFormControll.text);
                        Navigator.pop(context);
                      }
                    },
                    icon: const Icon(Icons.note_add),
                    label: const Text('登録')),
              ],
            ),
          ),
        ));
  }

  void _registerKptNote(
      WidgetRef ref, String category, String titile, String description) {
    const uuid = Uuid();
    String id = uuid.v4();
    return ref.read(kptNoteListProvider.notifier).addNote(KptNote(
        id: id, category: category, title: titile, description: description));
  }
}
