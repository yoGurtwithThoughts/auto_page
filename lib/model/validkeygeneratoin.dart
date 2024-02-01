import 'dart:convert';
import 'dart:math';

String generateEmailVerificationToken() {
  final random = Random.secure();
  final bytes = List.generate(32, (index) => random.nextInt(256));
  return base64Url.encode(bytes);
}
