import 'package:flutter/material.dart';

import '../model/kpt_note.dart';

class KptNoteWidget extends StatelessWidget {
  const KptNoteWidget({required this.kptNote, Key? key}) : super(key: key);
  final KptNote kptNote;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _getColor(kptNote.category),
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
    );
  }

  _getColor(String category) {
    switch (category) {
      case "Keep":
        return Colors.blue[100];
      case "Problem":
        return Colors.yellow[100];
      case "Try":
        return Colors.green[100];
      default:
        return Colors.red;
    }
  }
}
