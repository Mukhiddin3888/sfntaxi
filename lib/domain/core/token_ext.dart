

import 'package:sfntaxi/domain/core/token.dart';

import '../auth/auth_failure.dart';

extension TokenX on Token {
  AuthFailure? get hasFailure {
    if (accessToken == null && refreshToken == null) {
      return const AuthFailure.unAuthenticated();
    } else {
      return null;
    }
  }

  String get toToken {
    return accessToken ?? '';
  }
}
