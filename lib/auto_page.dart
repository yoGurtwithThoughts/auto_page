import 'package:auto_page/model/loginuser.dart';
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
  body:  SingleChildScrollView(
  child: Center(
    child:Padding(
    padding:EdgeInsets.only(top: 250),
    child: Container(
      height: 120,
      width: 250,
child: ElevatedButton(
      onPressed: () async{
 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginUser(),),);
              },
      style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown, // Цвет кнопки
            textStyle: TextStyle(
              fontSize: 18.0, 
            ),
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // Отступы вокруг текста
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Скругление углов кнопки
            ),
          ),
      child: Text('Зарегестироваться',
      ),
      ),
    ), ),),
  )
);

}
}