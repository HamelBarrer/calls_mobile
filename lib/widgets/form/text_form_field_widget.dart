import 'package:calls_mobile/constants/view_constant.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextFormFieldWidget extends HookConsumerWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final bool obscureText;
  final String messageError;

  const TextFormFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.hintText,
    this.obscureText = false,
    required this.messageError,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      focusNode: focusNode,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return messageError;
        }
        return null;
      },
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
