import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:auto_page/model/loginuser.dart';
void main() async {
await Supabase.initialize(
  url: 'https://hyknbwhwrzrcjgefpvhv.supabase.co',
  anonKey:'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh5a25id2h3cnpyY2pnZWZwdmh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY2ODQ2NzMsImV4cCI6MjAyMjI2MDY3M30.u0RENNqmz4Ab5WmHnXHc8x-pbdlhN50fxgx6Bt-mAdE'
);
final supabase = SupabaseClient(
  'userLogin',
  'password',

);
}
class AutorisedPage extends StatefulWidget{
  @override
  _AutorisedPage createState()=> _AutorisedPage();
}
class _AutorisedPage extends _AutorisedPage{
  @override 
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _registerAndShowMessage() async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    
    final response = await supabase.auth.signUp(
      email: username, // Используйте email, если вы используете авторизацию по email
      password: password,
    ); 
}
}