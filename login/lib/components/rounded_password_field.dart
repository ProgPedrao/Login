import 'package:flutter/material.dart';
import 'package:login/components/text_field_container.dart';
import 'package:login/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: const InputDecoration(
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.remove_red_eye,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
          hintText: "Password",
        ),
      ),
    );
  }
}
