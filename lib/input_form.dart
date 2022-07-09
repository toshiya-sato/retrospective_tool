import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  const InputForm({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DropdownButton<String>(
              isExpanded: true,
              icon: const Icon(Icons.arrow_downward),
              onChanged: (String? newValue) {},
              items: <String>[
                'Keep',
                'Problem',
                'Try',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              minLines: 10,
              maxLines: 10,
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
            ),
            OutlinedButton(onPressed: () => {}, child: Text('登録'))
          ],
        ),
      ),
    ));
  }
}
