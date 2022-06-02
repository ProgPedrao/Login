import 'package:flutter/material.dart';
import 'package:login/components/text_field_container.dart';
import 'package:login/constants.dart';

class RoundedInputField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    this.icon = Icons.person,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
