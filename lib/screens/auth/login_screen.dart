import 'package:calls_mobile/constants/colors_constant.dart';
import 'package:calls_mobile/widgets/button/elevated_button_widget.dart';
import 'package:calls_mobile/widgets/button/text_button_widget.dart';
import 'package:calls_mobile/widgets/form/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: CustomColors.black100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldWidget(
              controller: usernameController,
              hintText: 'Username',
            ),
            const SizedBox(
              height: 15,
            ),
            TextFieldWidget(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                TextButtonWidget(
                  onPressed: () {},
                  buttonName: 'Received Password',
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButtonWidget(
              onPressed: () {},
              nameButton: 'Log in',
            ),
          ],
        ),
      ),
    );
  }
}
