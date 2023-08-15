import 'package:calls_mobile/constants/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextFieldWidget extends HookConsumerWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(
        color: CustomColors.grey100,
        fontWeight: FontWeight.w700,
      ),
      decoration: InputDecoration(
        contentPadding: CustomLayout.paddingAll,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: CustomColors.grey100,
          fontWeight: FontWeight.w700,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: CustomLayout.borderRadius,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: CustomLayout.borderRadius,
        ),
        fillColor: CustomColors.black200,
        filled: true,
      ),
    );
  }
}
