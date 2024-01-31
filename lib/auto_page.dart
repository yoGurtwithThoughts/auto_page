import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AutoRisatoinPage extends StatelessWidget{
  @override
Widget build (BuildContext context){
return  Scaffold(
  backgroundColor: Colors.black26,
  appBar: AppBar(
    backgroundColor: Colors.brown,
    title: Text('Регистрация',
    style: TextStyle(
     fontSize: 15,
     color: Colors.white,
     fontWeight: FontWeight.w400,

    ),),
  ),
);
}
}