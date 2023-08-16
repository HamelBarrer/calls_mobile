import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = StateProvider((ref) async {
  return await SharedPreferences.getInstance();
});

final cleanSharedProvider = StateProvider((ref) async {
  final sharedProvider = await ref.watch(sharedPreferencesProvider);
  return await sharedProvider.clear();
});
