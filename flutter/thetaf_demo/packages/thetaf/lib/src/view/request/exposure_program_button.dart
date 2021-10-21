import 'package:flutter/material.dart';
import 'package:theta/theta.dart';

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
            onChanged: (String? newValue) async {
              var response = '';
              int exposureProgramValue = 2;

              switch (newValue) {
                case 'manual':
                  exposureProgramValue = 1;
                  break;
                case 'normal':
                  exposureProgramValue = 2;
                  break;
                case 'aperture':
                  exposureProgramValue = 3;
                  break;
                case 'shutter':
                  exposureProgramValue = 4;
                  break;
                case 'iso':
                  exposureProgramValue = 5;
                  break;
                default:
                  exposureProgramValue = 2;
                  break;
              }
              response = await setOption(
                  name: 'exposureProgram', value: exposureProgramValue);

              print(response);
            },
          ),
        ],
      ),
    );
  }
}
