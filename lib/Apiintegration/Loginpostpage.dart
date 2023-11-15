import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;


class LoginPost extends StatelessWidget {
  const LoginPost({super.key, required  this.name,required this.phone, required this.mail,required this.passwrd});
  final String name;
  final String phone;
  final String mail;
  final String passwrd;
  Future postdata()async{
    var resp=await  http.post(Uri.parse("http://192.168.1.38:4000/trial_post"),body:{ 'name':name,
    'mail':mail,
    'phone':phone,
    'password':passwrd});
    if(resp.statusCode==200){
      var data=await resp.body;
      return data;

    }
    else{
      return Fluttertoast.showToast(msg: "${resp.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Text("$mail"),
          Text(name),
          Text(phone),
          Text(passwrd),
          ElevatedButton(onPressed: (){
            postdata();
            Fluttertoast.showToast(msg: "Update succesfull");

          }, child: Text("Upload")),
        ],
      )
    );
  }
}
