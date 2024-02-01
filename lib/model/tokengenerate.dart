import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:postgres/postgres.dart';
import 'package:auto_page/model/loginuser.dart';
import 'package:auto_page/autorised.dart';
import 'package:auto_page/model/tokengenerate.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'dart:async';
import 'package:postgres/postgres.dart';


void main() async {
  // Подключение к PostgreSQL
  final connection = await PostgerstSQLConnection('localhost', 5432, 'database', username: 'user', password: 'password');

  await connection.open();

  // Подключение к Supabase
  final supabase = SupabaseClient('https://hyknbwhwrzrcjgefpvhv.supabase.co', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh5a25id2h3cnpyY2pnZWZwdmh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY2ODQ2NzMsImV4cCI6MjAyMjI2MDY3M30.u0RENNqmz4Ab5WmHnXHc8x-pbdlhN50fxgx6Bt-mAdE');

  // Регистрация пользователя
  final user = await registerUser(connection, 'userLogin', 'password');

  // Отправка подтверждающего письма
  await sendConfirmationEmail(userLogin);

void sendVerificationEmail(String userLogin, String verificationToken) async {
  final Email email = Email(
    body: 'Click the link below to verify your email:\n\n'
        'https://yourapp.com/verify?token=$verificationToken',
    subject: 'Verify your email',
    recipients: [userLogin],
    isHTML: false,
  );

  await FlutterEmailSender.send(email);
}

  //почта подтверждена в Supabase
  await markEmailAsConfirmed(supabase, user.id);

  // Отправляем уведомление пользователю
  sendNotification(user.id, 'Почта подтверждена');

  // Здесь можно перенаправить пользователя на страницу приветствия
}

// Регистрация пользователя в PostgreSQL
Future<User> registerUser(PostgreSQLConnection connection, String email, String password) async {
  
}

// Отправка подтверждающего письма
Future<void> sendConfirmationEmail(String userEmail) async {
  // Здесь должен быть код для отправки письма с подтверждением по электронной почте
}

// Помечаем, что почта подтверждена в Supabase
Future<void> markEmailAsConfirmed(SupabaseClient supabase, String userId) async {
  // Здесь должен быть код для обновления статуса подтверждения почты в Supabase
}

// Отправка уведомления пользователю
Future<void> sendNotification(String userId, String message) async {
  // Здесь должен быть код для отправки уведомления в приложение пользователя
}
