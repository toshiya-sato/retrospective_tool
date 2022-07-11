import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:retrospective_tool/input_form.dart';
import 'package:retrospective_tool/widgets/browsing_kpt_note_widget.dart';
import 'package:retrospective_tool/widgets/kpt_note_widget.dart';

import 'model/kpt_note.dart';
import 'state/kpt_note_list.state.dart';

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrospective Tool',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const KptGridPage(),
    );
  }
}

class KptGridPage extends HookConsumerWidget {
  const KptGridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final kptNoteList = ref.watch(kptNoteListProvider);
    final keeps = kptNoteList.where((el) => el.category == 'Keep').toList();
    final problems =
        kptNoteList.where((el) => el.category == 'Problem').toList();
    final tries = kptNoteList.where((el) => el.category == 'Try').toList();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _generateCategoryHeadline(
            'Keep',
            Theme.of(context).textTheme.headline3!.copyWith(color: Colors.blue),
          ),
          _generateNoteWidgets(keeps, context),
          _generateCategoryHeadline(
            'Problem',
            Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(color: Colors.yellow[900]),
          ),
          _generateNoteWidgets(problems, context),
          _generateCategoryHeadline(
            'Try',
            Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(color: Colors.green),
          ),
          _generateNoteWidgets(tries, context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            showBarModalBottomSheet(
              context: context,
              builder: (context) => const InputForm(),
            );
          }),
    );
  }

  _generateCategoryHeadline(String category, TextStyle style) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category,
              style: style,
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }

  _generateNoteWidgets(List<KptNote> list, BuildContext context) {
    return list.isNotEmpty
        ? SliverPadding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return KptNoteWidget(
                    kptNote: list[index],
                    onDoubleTap: () {
                      showCupertinoModalPopup(
                          context: context,
                          builder: (BuildContext context) {
                            return BrowsingKptNoteWidget(
                              kptNote: list[index],
                            );
                          });
                    },
                  );
                },
                childCount: list.length,
              ),
            ),
          )
        : SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('右下の+を押して追加しよう',
                  style: Theme.of(context).textTheme.bodySmall),
            ),
          );
  }
}
