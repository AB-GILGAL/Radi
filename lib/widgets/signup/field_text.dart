import 'package:flutter/material.dart';

class FieldText extends StatefulWidget {
  const FieldText(
      {super.key,
      required this.nameText,
      required this.textEditingController,
      required this.formFieldValidator,
      required this.keyboardT});
  final String nameText;
  final keyboardT;
  final TextEditingController textEditingController;
  final FormFieldValidator<String> formFieldValidator;

  @override
  State<FieldText> createState() => _FieldTextState();
}

class _FieldTextState extends State<FieldText> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.formFieldValidator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: widget.keyboardT,
      decoration: InputDecoration(
        label: Text(
          widget.nameText,
          style:
              TextStyle(fontSize: MediaQuery.of(context).size.height / 46.88),
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.red,
                width: MediaQuery.of(context).size.height / 562.6),
            borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.height / 84.4)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.red,
                width: MediaQuery.of(context).size.height / 562.6),
            borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.height / 84.4)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey,
                width: MediaQuery.of(context).size.height / 562.6),
            borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.height / 84.4)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: const Color.fromARGB(255, 30, 0, 82),
                width: MediaQuery.of(context).size.height / 562.6),
            borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.height / 84.4)),
      ),
    );
  }
}
