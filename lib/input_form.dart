import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrospective_tool/model/kpt_note.dart';
import 'package:retrospective_tool/state/kpt_note_list.state.dart';
import 'package:retrospective_tool/utils/kpt_note_util.dart';
import 'package:uuid/uuid.dart';

const _selectCategory = KptNoteUtil.keepVal;
final categoryProvider = StateProvider<String>((ref) {
  return _selectCategory;
});

class InputForm extends HookConsumerWidget {
  InputForm({Key? key, this.targetKptNote}) : super(key: key) {
    _formKey = GlobalKey<FormState>();
  }
  late final _formKey;
  final KptNote? targetKptNote;
  bool get isEditMode => targetKptNote != null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleFormControll = useTextEditingController();
    final descriptionFormControll = useTextEditingController();
    String selectCategory = ref.watch(categoryProvider);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (isEditMode) {
          _updateDropdownCategory(ref, targetKptNote!.category);
          titleFormControll.text = targetKptNote!.title;
          descriptionFormControll.text = targetKptNote!.description;
        } else {
          _updateDropdownCategory(ref, KptNoteUtil.keepVal);
        }
      });
      return;
    }, []);

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
                    KptNoteUtil.keepVal,
                    KptNoteUtil.problemVal,
                    KptNoteUtil.tryVal,
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
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                      if (isEditMode) {
                        _updateKptNote(
                          ref,
                          selectCategory,
                          titleFormControll.text,
                          descriptionFormControll.text,
                        );
                      } else {
                        _registerKptNote(
                            ref,
                            selectCategory,
                            titleFormControll.text,
                            descriptionFormControll.text);
                      }
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.note_add),
                    label: isEditMode ? const Text('修正') : const Text('登録')),
              ],
            ),
          ),
        ));
  }

  void _registerKptNote(
      WidgetRef ref, String category, String title, String description) {
    const uuid = Uuid();
    String id = uuid.v4();
    ref.read(kptNoteListProvider.notifier).addNote(KptNote(
        id: id, category: category, title: title, description: description));
  }

  void _updateKptNote(
      WidgetRef ref, String category, String title, String description) {
    final provider = ref.read(kptNoteListProvider.notifier).updateNote(
          targetKptNote!.id,
          category,
          title,
          description,
        );
  }

  void _updateDropdownCategory(WidgetRef ref, String category) {
    ref.read(categoryProvider.notifier).update((state) => category);
  }
}
