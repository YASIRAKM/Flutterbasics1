import 'package:flutter/material.dart';
import 'package:flutter1/Apiintegration/Loginpostpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> form_key = GlobalKey<FormState>();
  TextEditingController namc = TextEditingController();
  TextEditingController mailc = TextEditingController();
  TextEditingController phonec = TextEditingController();
  TextEditingController passwdc = TextEditingController();
  var n;
  var m;
  var ps;
  var p;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: form_key,
        child: ListView(children: [
          NewTextFormField(
            txt: 'Name',
            myicon: Icons.person,
            cntrl: namc,
          ),
          NewTextFormField(
            txt: 'Phone',
            myicon: Icons.phone,
            cntrl: phonec,
          ),
          NewTextFormField(
            txt: 'Mail',
            myicon: Icons.mail,
            cntrl: mailc,
          ),
          NewTextFormField(
            txt: 'Password',
            myicon: Icons.password,
            cntrl: passwdc,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                   n=namc.text;
                   m=mailc.text;
                   ps=passwdc.text;
                   p=phonec.text;
                });
                if (form_key.currentState!.validate()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => LoginPost(
                                name: n,
                                phone: p,
                                mail: m,
                                passwrd: ps,
                              )));
                  namc.clear();
                  passwdc.clear();
                  mailc.clear();
                  phonec.clear();
                }
              },
              child: const Text("Submit"))
        ]),
      ),
    );
  }
}

class NewTextFormField extends StatelessWidget {
  const NewTextFormField({
    super.key,
    required this.txt,
    required this.myicon,
    required this.cntrl,
  });

  final String txt;
  final IconData myicon;
  final TextEditingController cntrl;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'required';
        }
        return null;
      },
      controller: cntrl,
      decoration: InputDecoration(
        border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20)),
        labelText: txt,
        labelStyle: const TextStyle(color: Colors.tealAccent),
        prefixIcon: Icon(myicon),
      ),
    );
  }
}
