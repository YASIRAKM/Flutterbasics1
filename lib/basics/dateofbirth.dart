import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DoB extends StatefulWidget {
  const DoB({super.key});

  @override
  State<DoB> createState() => _DoBState();
}

class _DoBState extends State<DoB> {
  DateTime?dob;
  TextEditingController Daten=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(controller: Daten,
              onTap: ()async{
                dob= await showDatePicker(context: context, initialDate:DateTime.now(), firstDate: DateTime(1900), lastDate: DateTime.now());
                if(dob!=null){
                  setState(() {
                    Daten.text=dob.toString();
                    Fluttertoast.showToast(msg: "HEY");
                  });


                }
              },
            ),
            ElevatedButton(onPressed: (){
              Fluttertoast.showToast(msg: "HEY",textColor: Colors.black38);
            }, child: Text("PRESS HERE"))
          ],
        ),
      ),
    );
  }
}

