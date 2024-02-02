import 'package:flutter/material.dart';

class CheckBoxButton extends StatefulWidget {
  const CheckBoxButton({super.key});

  @override
  State<CheckBoxButton> createState() => _CheckBoxButtonState();
}

class _CheckBoxButtonState extends State<CheckBoxButton> {
  TextEditingController transmissionController = new TextEditingController();

  final List<String> transmissionList = [
    'Manual',
    'Auto',
    '5spd',
    '6spd',
  ];

  bool hideTransmissionList = false;

  // Checkbox
  bool? check1 = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        // MaterialState.hovered,
        // MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.white;
      }
      return Colors.white;
    }

    return Row(
      children: [
        Column(
          children: [
            CheckboxListTile(
              //checkbox positioned at left
              checkColor: Colors.blue,

              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: check1,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? value) {
                setState(() {
                  check1 = value;
                });
              },
              title: const Text("Favourite",
                  style: TextStyle(fontSize: 17, color: Colors.white)),
              side: MaterialStateBorderSide.resolveWith(
                (states) => const BorderSide(width: 1.0, color: Colors.white),
              ),
            ),
          ],
        ),
        Column(
          children: [],
        ),
      ],
    );
  }
}
