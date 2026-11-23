import 'dart:convert';
import 'dart:math';

import 'package:android_dev/core/db/app_database.dart';
import 'package:android_dev/screens/home_screen/services/local_data_service.dart';
import 'package:crypto/crypto.dart';
import 'package:drift/drift.dart' show Value;
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Remembers who is logged in. null = nobody.
class AuthController extends Notifier<UserProfile?> {
  @override
  UserProfile? build() => null;

  // Random text, different for every user.
  String _makeSalt() {
    final random = Random.secure();
    return base64Encode(List<int>.generate(16, (_) => random.nextInt(256)));
  }

  // One-way "fingerprint" of salt + password.
  String _hash(String password, String salt) =>
      sha256.convert(utf8.encode(salt + password)).toString();

  /// Returns an error message, or null if it worked.
  Future<String?> register(String nickname, String email, String password) async {
    final data = ref.read(localDataServiceProvider);
    if (await data.findUserByEmail(email) != null) return 'Email already registered';

    final salt = _makeSalt();
    final user = UserProfile(
      id: 'user-${DateTime.now().microsecondsSinceEpoch}',
      nickname: nickname,
      email: email,
      password: _hash(password, salt), // we save the hash, not the real password
      salt: salt,
    );
    await data.saveProfile(user.toCompanion(false));
    state = user; // logged in
    return null;
  }

  Future<String?> login(String email, String password) async {
    final user = await ref.read(localDataServiceProvider).findUserByEmail(email);
    if (user == null || _hash(password, user.salt) != user.password) {
      return 'Wrong email or password';
    }
    state = user; // logged in
    return null;
  }

  void logout() => state = null;

  Future<void> updateProfile(String nickname, String? avatarUrl) async {
    final user = state;
    if (user == null) return;
    final updated = user.copyWith(nickname: nickname, avatarUrl: Value(avatarUrl));
    await ref.read(localDataServiceProvider).saveProfile(updated.toCompanion(false));
    state = updated;
  }
}

final authProvider = NotifierProvider<AuthController, UserProfile?>(AuthController.new);
