import 'package:calls_mobile/providers/router_provider.dart';
import 'package:calls_mobile/utils/color_schema_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() => runApp(const ProviderScope(child: App()));

class App extends HookConsumerWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
