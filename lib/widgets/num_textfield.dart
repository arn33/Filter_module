import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWithInitialValue extends StatefulWidget {
  @override
  _TextFieldWithInitialValueState createState() =>
      _TextFieldWithInitialValueState();
}

class _TextFieldWithInitialValueState extends State<TextFieldWithInitialValue> {
  final TextEditingController _controller =
      TextEditingController(text: '10000'); // Set your initial value here

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        labelText: 'Enter Odometer Reading',
        border: OutlineInputBorder(),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
