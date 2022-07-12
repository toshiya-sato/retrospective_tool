import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrospective_tool/model/kpt_note.dart';
import 'package:retrospective_tool/state/kpt_note_list.state.dart';
import 'package:uuid/uuid.dart';

class InputForm extends HookConsumerWidget {
  const InputForm({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleFormControll = useTextEditingController();
    final descriptionFormControll = useTextEditingController();
    String selectCategory = 'Keep';

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DropdownSearch<String>(
            selectedItem: 'Keep',
            onChanged: (String? newValue) {
              selectCategory = newValue!;
              debugPrint(selectCategory);
            },
            items: const <String>[
              'Keep',
              'Problem',
              'Try',
            ],
          ),
          TextFormField(
            controller: titleFormControll,
            decoration: const InputDecoration(
              labelText: 'Title',
              border: OutlineInputBorder(),
            ),
          ),
          TextFormField(
            controller: descriptionFormControll,
            minLines: 10,
            maxLines: 10,
            decoration: const InputDecoration(
              labelText: 'Description',
              border: OutlineInputBorder(),
            ),
          ),
          OutlinedButton(
              onPressed: () {
                _registerKptNote(ref, selectCategory, titleFormControll.text,
                    descriptionFormControll.text);
                Navigator.pop(context);
              },
              child: const Text('登録'))
        ],
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
