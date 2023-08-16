import 'dart:convert';

import 'package:calls_mobile/models/auth_model.dart';
import 'package:calls_mobile/providers/error_provider.dart';
import 'package:calls_mobile/providers/shared_preferences_provider.dart';
import 'package:calls_mobile/services/auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authenticatedUserProvider = StateProvider((ref) async {
  final sharedProvider = await ref.watch(sharedPreferencesProvider);
  final storage = sharedProvider.getString('auth');
  if (storage != null) {
    return AuthUserModel.fromJsom(jsonDecode(storage));
  }
});

final registerAuthenticatedUserProvider =
    StateProvider.family<void, AuthModel>((ref, auth) async {
  try {
    ref.watch(errorProvider.notifier).state = '';
    final sharedProvider = await ref.watch(sharedPreferencesProvider);
    final authService = AuthService();

    final authUser = await authService.login(auth);
    await sharedProvider.setString('auth', jsonEncode(authUser.toJsom()));
  } catch (e) {
    ref.watch(errorProvider.notifier).state = e.toString();
  }
});
