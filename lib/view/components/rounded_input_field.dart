import 'package:big_deals/view/colors.dart';
import 'package:flutter/material.dart';
import 'package:big_deals/view/components/text_field_container.dart';


class RoundedInputField extends StatelessWidget {
  final String? hintText;
  final IconData icon;
  final ValueChanged<String>? onChanged;
  const RoundedInputField({
    Key? key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: AppColors.kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: AppColors.kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
