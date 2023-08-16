import 'package:calls_mobile/constants/view_constant.dart';
import 'package:calls_mobile/models/auth_model.dart';
import 'package:calls_mobile/providers/auth_provider.dart';
import 'package:calls_mobile/providers/error_provider.dart';
import 'package:calls_mobile/widgets/button/elevated_button_widget.dart';
import 'package:calls_mobile/widgets/button/text_button_widget.dart';
import 'package:calls_mobile/widgets/form/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messageError =
        ref.watch(errorProvider) != '' ? ref.watch(errorProvider) : 'requerido';

    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    final FocusNode usernameFocus = FocusNode();
    final FocusNode passwordFocus = FocusNode();

    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: CustomColors.black100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormFieldWidget(
                controller: usernameController,
                focusNode: usernameFocus,
                hintText: 'Username',
                messageError: messageError,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormFieldWidget(
                controller: passwordController,
                focusNode: passwordFocus,
                hintText: 'Password',
                obscureText: true,
                messageError: messageError,
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    final authModel = AuthModel(
                      username: usernameController.text,
                      password: passwordController.text,
                    );

                    ref.watch(registerAuthenticatedUserProvider(authModel));
                  }
                },
                nameButton: 'Log in',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
