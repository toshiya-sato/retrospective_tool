import 'package:flutter/material.dart';
import 'package:retrospective_tool/widgets/kpt_note_widget.dart';

import '../model/kpt_note.dart';
import '../utils/kpt_note_util.dart';

class BrowsingKptNoteWidget extends StatelessWidget {
  const BrowsingKptNoteWidget(
      {required this.kptNote,
      this.onDelete,
      this.onNext,
      this.onPrevious,
      Key? key})
      : super(key: key);
  final KptNote kptNote;
  final Function()? onDelete;
  final Function()? onNext;
  final Function()? onPrevious;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: FractionallySizedBox(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Opacity(
              opacity: 0.5,
              child: Container(color: Colors.black),
            ),
          ),
        ),
        FractionallySizedBox(
            heightFactor: 0.9,
            widthFactor: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 8,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_left,
                          size: 50,
                          color: Colors.white,
                        ),
                        Expanded(
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Card(
                              color: KptNoteUtil.getColor(kptNote.category),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Text(
                                        kptNote.title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall,
                                        textAlign: TextAlign.left,

                                        // overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Expanded(
                                      child: CustomScrollView(
                                        slivers: [
                                          SliverToBoxAdapter(
                                            child: Text(
                                              kptNote.description,
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_right,
                          size: 50,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                RawMaterialButton(
                  onPressed: onDelete,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10.0),
                  fillColor: Theme.of(context).primaryColor,
                  child: Icon(
                    Icons.delete,
                    size: 30,
                    color: Theme.of(context).cardColor,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
