import 'package:android_dev/core/auth/auth_controller.dart';
import 'package:android_dev/screens/auth/login_screen.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screens/main_screen.dart';

void main() => runApp(const ProviderScope(child: MainApp()));

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider); // null = nobody logged in
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: user == null ? const LoginScreen() : const MainScreen(),
    );
  }
}
