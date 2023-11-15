import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhT extends StatefulWidget {
  const WhT({super.key});

  @override
  State<WhT> createState() => _WhTState();
}

class _WhTState extends State<WhT> {
  List ConTact = [
    'Asha',
    'Michael',
    'Arjun',
    'Roland',
    'John Wick',
    'Jason Voorhees',
    'Freddy Krueger',
    'Keyser Soze',
    'Mohinder Singh Pandher',
    'Zara',
    'Mahnaz',
    'Ayan'
  ];
  List ImAge = [
    "https://rb.gy/fndgv",
    "https://rb.gy/5hf06",
    "https://rb.gy/65um4",
    "",
    "https://tinyurl.com/46rhxz7h",
    "https://tinyurl.com/2hccts8e",
    "https://tinyurl.com/3k8ubdxf",
    "https://tinyurl.com/59645fu6",
    "https://tinyurl.com/ycyz9r7x",
    "",
    "https://tinyurl.com/6wpc7ju6",
    "https://tinyurl.com/2582vw8j",
  ];

  List StAtus = ['Michael', 'Zara', 'Mohinder Singh Pandher', 'Roland'];
  List Calls = ['Ayan','Keyser Soze','Mohinder Singh Pandher'];
  List StatusImage = ["https://tinyurl.com/3wma5vze","https://tinyurl.com/msev6ps6","https://tinyurl.com/yc6fzmx3","https://tinyurl.com/bdht8rxa"];
  List CallImage = ["https://tinyurl.com/2582vw8j","https://tinyurl.com/59645fu6","https://tinyurl.com/ycyz9r7x",];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("WhatsApp"),
          actions: [PopupMenuButton(itemBuilder: (BuildContext context) => [
            PopupMenuItem(child: Text("SETTING")),
          ])],
          bottom: TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Text("Chats"),
                ),
                Tab(
                  child: Text("Stastus"),
                ),
                Tab(
                  child: Text("Calls"),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: ImAge[index]==""? CircleAvatar(child: Icon(Icons.person),):CircleAvatar(backgroundImage: NetworkImage(ImAge[index])),
                    title: Text(ConTact[index]),
                    //subtitle: Text(""),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Colors.black26,
                  );
                },
                itemCount: ConTact.length),
            ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  if(index==0){
                    return Column(
                      children: [
                        ListTile(leading: CircleAvatar(),title: Text("My Status"),),
                        Container(color: Colors.grey,
                          child: Padding(
                          padding: const EdgeInsets.only(right: 280),
                          child: Text("Recent Updates",style: TextStyle(color: Colors.teal)),
                        ),height: 20,)
                      ],
                    );

                  }
                  else return ListTile(
                    leading: CircleAvatar(child: Image.network(StatusImage[index])),
                    title: Text(StAtus[index-1]),
                    subtitle: Text(""),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Colors.black26,
                  );
                },
                itemCount: StAtus.length),
            ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(child: Image.network(CallImage[index])),
                    title: Text(Calls[index]),
                    trailing: Icon(CupertinoIcons.clock),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Colors.black26,
                  );
                },
                itemCount: Calls.length),
          ],
        ),
      ),
    );
  }
}
