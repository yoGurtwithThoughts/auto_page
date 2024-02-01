import 'package:auto_page/autorised.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
await Supabase.initialize(
  url: 'https://hyknbwhwrzrcjgefpvhv.supabase.co',
  anonKey:'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh5a25id2h3cnpyY2pnZWZwdmh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY2ODQ2NzMsImV4cCI6MjAyMjI2MDY3M30.u0RENNqmz4Ab5WmHnXHc8x-pbdlhN50fxgx6Bt-mAdE'
);
}
class LoginUser extends StatefulWidget{
  @override
  _LoginUserState createState()=>_LoginUserState();
   
}
class _LoginUserState extends State<LoginUser> {
final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  get supabase =>null;
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           TextField(
              controller: _loginController,
              decoration: InputDecoration(labelText: 'Логин',
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0), 
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                color: Colors.green,
              ),
             ),
             ),
           ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Пароль',
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0), 
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                color: Colors.green,
              ),
             ),
             ),
              
            ),
           SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
             //  Navigator.push(
             // context,
             // MaterialPageRoute(builder: (context) => AutorisedPage(),),);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                textStyle: TextStyle(
                  fontSize: 18.0,
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text('Register'),
            ),
        ],
        ),
      );
  
  }
  Future<void> saveUserData() async {
    final login = _loginController.text;
    final password = _passwordController.text;

    // Отправка данных в Supabase
    final response = await supabase.from('UserID')
        .upsert({
          'userLogin': login,
          'password': password,
        })
        .execute();

    if (response.error != null) {
      print('Ошибка при сохранении данных: ${response.error}');
    } else {
      print('Данные успешно сохранены!');
    }
  }
 
}