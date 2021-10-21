import 'package:flutter/material.dart';

//TODO: this button does not work
// need to add commands when the item is selected
class ExposureProgramButton extends StatelessWidget {
  const ExposureProgramButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Row(
        children: [
          const Text('exposure program'),
          DropdownButton(
            items: <String>['manual', 'normal', 'aperture', 'shutter', 'iso']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              print('changed to $newValue');
            },
          ),
        ],
      ),
    );
  }
}
