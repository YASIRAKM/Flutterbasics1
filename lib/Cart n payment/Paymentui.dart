import 'package:flutter1/basics/Delay2.dart';
import 'package:flutter1/Cart%20n%20payment/payments.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool _paymnts = true;
  GlobalKey<FormState> formk = GlobalKey<FormState>();
  TextEditingController Cnum = TextEditingController();
  TextEditingController Cname = TextEditingController();
  TextEditingController Cmm = TextEditingController();
  TextEditingController Cyy = TextEditingController();
  TextEditingController Cvv = TextEditingController();
  bool _isVisible = false;
  int i = 120;
  bool _val = true;

  void Press() {
    Future.delayed(Duration(seconds: 1), () {
      if (i > 0) {
        setState(() {
          i--;
        });
        Press();
      } else {
        Navigator.push(context, MaterialPageRoute(builder: (_) => Dur2()));
      }
    });
  }

  Future<void> getdata() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      _paymnts = pref.getBool("pAyments") ?? false;
      Cnum.text = pref.getString("CARDN") ?? "";
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
    Press();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Form(
              key: formk,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _val?Text(""):CircularProgressIndicator(),
                  SizedBox(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width,
                      child: Image(image: NetworkImage("https://rb.gy/a3bl9"))),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 5,
                      height: MediaQuery.of(context).size.height / 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.black),
                          color: Colors.black12),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: Cnum,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "INVALID";
                          }
                          return null;
                        },
                        inputFormatters: [LengthLimitingTextInputFormatter(16)],
                        decoration: InputDecoration(
                            labelText: "CARD NUMBER",
                            prefixIcon: Icon(Icons.credit_card),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: 'XXXX XXXX XXXX XXXX'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 5,
                      height: MediaQuery.of(context).size.height / 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.black)
                          color: Colors.black12),
                      child: TextFormField(
                          controller: Cname,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "INVALID";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "CARDHOLDER NAME",
                            prefixIcon: Icon(CupertinoIcons.person),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // border: Border.all(color: Colors.black)
                              color: Colors.black12),
                          width: MediaQuery.of(context).size.width / 5,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "INVALID";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(2)
                            ],
                            decoration: InputDecoration(
                                labelText: "MM",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                            controller: Cmm,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // border: Border.all(color: Colors.black)
                              color: Colors.black12),
                          width: MediaQuery.of(context).size.width / 5,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "INVALID";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(4),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                                labelText: "YY",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                            controller: Cyy,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // border: Border.all(color: Colors.black)
                              color: Colors.black12),
                          width: MediaQuery.of(context).size.width / 3.5,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            obscureText: !_isVisible,
                            obscuringCharacter: "*",
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "INVALID";
                              }
                              return null;
                            },
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(3)
                            ],
                            decoration: InputDecoration(
                                labelText: "CVV",
                                suffixIcon: Icon(CupertinoIcons.creditcard),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                            controller: Cvv,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.teal),
                            iconSize: MaterialStatePropertyAll(20)),
                        onPressed: () async {
                          if (formk.currentState!.validate()) {
                            SharedPreferences pref =
                                await SharedPreferences.getInstance();
                            setState(() {
                              _paymnts = false;
                            });
                            pref.setString("CARDN", Cnum.text);
                            pref.setBool("pAyments", true);
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Paye()));
                          }
                        },
                        child: Text("SUBMIT")),
                  ),
                  _paymnts ? Text("PAYMENT ALREADY DONE") : Text(""),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _val = !_val;
                        });
                        Future.delayed(Duration(seconds: 3), () {
                          setState(() {
                            _val = !_val;
                            Cnum.clear();
                            Cname.clear();
                            Cyy.clear();
                            Cvv.clear();
                            Cmm.clear();
                          });
                        });
                      },
                      child: Text("REFRESH")),
                  Text("$i")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
