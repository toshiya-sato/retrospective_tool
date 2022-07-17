import 'package:flutter/material.dart';

import '../model/kpt_note.dart';
import '../utils/kpt_note_util.dart';

class KptNoteWidget extends StatelessWidget {
  const KptNoteWidget(
      {required this.kptNote, this.onDoubleTap, this.onTap, Key? key})
      : super(key: key);
  final KptNote kptNote;
  final Function()? onDoubleTap;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      child: Card(
        color: KptNoteUtil.getColor(kptNote.category),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                kptNote.title,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Expanded(
                child: Text(
                  kptNote.description,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
