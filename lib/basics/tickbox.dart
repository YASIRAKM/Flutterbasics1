import 'package:flutter/material.dart';

class Gmail extends StatefulWidget {
  const Gmail({super.key});

  @override
  State<Gmail> createState() => _GmailState();
}

class _GmailState extends State<Gmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black45,
      appBar: AppBar(
        actions: [PopupMenuButton(itemBuilder: (BuildContext context)=>[
          PopupMenuItem(child: Text("SETTINGS")),
          PopupMenuItem(child: Text("PROFILE")),
        ])],
      ),
      floatingActionButton: Container(width: 150,
        child: FloatingActionButton(onPressed: () {

        },child: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Icon(Icons.phone_enabled_rounded),
        )),
      ),
      body: ListView(
        children: [
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("Ramesh",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("SURESH",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("ASDS",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("VPL",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("ADSCS",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("5AS",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("MNVXBZ",style: TextStyle(color: Colors.white)),),
          ListTile(leading:CircleAvatar(child: Icon(Icons.person)),title: Text("POIUYT",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("RFHGJK",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("DGFHBJMN",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("WDEFDG",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("ADSFBG",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("SADCX",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("SAVZX",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("SAFVDZ",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("RamSA",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("RVXZZV",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("RWFAC",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("RXVZV",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("PFHDK",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("RQIWFL",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("ZCXV",style: TextStyle(color: Colors.white)),),
          ListTile(leading:CircleAvatar(child: Icon(Icons.person)),title: Text("XCVVX",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("_SHCK",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("SfcS",style: TextStyle(color: Colors.white)),),
          ListTile(leading: CircleAvatar(child: Icon(Icons.person)),title: Text("R_SJAL",style: TextStyle(color: Colors.white)),),
          ListTile(leading:CircleAvatar(child: Icon(Icons.person)),title: Text("A_adFA",style: TextStyle(color: Colors.white)),),
        ],
      ),



    );
  }
}
