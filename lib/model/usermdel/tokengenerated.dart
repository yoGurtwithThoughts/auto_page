import 'dart:math';
import 'dart:convert';
import 'dart:async';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:postgres/postgres.dart';
import 'package:auto_page/model/loginuser.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
void main() async {
await Supabase.initialize(
  url: 'https://hyknbwhwrzrcjgefpvhv.supabase.co',
  anonKey:'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh5a25id2h3cnpyY2pnZWZwdmh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY2ODQ2NzMsImV4cCI6MjAyMjI2MDY3M30.u0RENNqmz4Ab5WmHnXHc8x-pbdlhN50fxgx6Bt-mAdE'
);
}
String generateToken({int length = 32}) {
  final random = Random.secure();
  final bytes = List.generate(length, (index) => random.nextInt(256));
  return base64Url.encode(bytes);
}
     