import 'package:flutter/material.dart';
import 'package:retrospective_tool/widgets/kpt_note_widget.dart';

import '../model/kpt_note.dart';

class BrowsingKptNoteWidget extends StatelessWidget {
  const BrowsingKptNoteWidget({required this.kptNote, this.onDelete, Key? key})
      : super(key: key);
  final KptNote kptNote;
  final Function()? onDelete;

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
                            // TODO: 長文表示可能な専用のWidget作る
                            child: KptNoteWidget(
                              kptNote: kptNote,
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
                GestureDetector(
                  onTap: onDelete,
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).primaryColor),
                    child: Icon(
                      Icons.delete,
                      color: Theme.of(context).cardColor,
                      size: 30,
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
