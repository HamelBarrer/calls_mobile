import 'package:calls_mobile/constants/view_constant.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ElevatedButtonWidget extends HookConsumerWidget {
  final VoidCallback onPressed;
  final String nameButton;

  const ElevatedButtonWidget({
    super.key,
    required this.onPressed,
    required this.nameButton,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: CustomColors.blue200,
          shape: RoundedRectangleBorder(
            borderRadius: CustomLayout.borderRadius,
          ),
          padding: CustomLayout.paddingVertial,
        ),
        onPressed: onPressed,
        child: Text(
          nameButton,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
