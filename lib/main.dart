import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 6,

      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.greenAccent,

          title: Text("jj"),
          bottom: TabBar(
            isScrollable: true,
              tabs:[
            Tab(icon: Icon(Icons.list),),
            Tab(icon: Icon(Icons.grid_4x4),),
            Tab(text: "2",),
            Tab(text: "3",),
            Tab(text: "4",),
            Tab(text: "5",),
            Tab(text: "6",),
          ]),
        ),
        body: TabBarView(children: [
         ListView(
           children: [
             ListTile(
               leading: Icon(Icons.first_page),
               title: Text("First"),
             ),ListTile(
               leading: Icon(Icons.first_page),
               title: Text("Second"),
             ),ListTile(
               leading: Icon(Icons.first_page),
               title: Text("Third"),
             ),ListTile(
               leading: Icon(Icons.first_page),
               title: Text("Fourth"),
             ),ListTile(
               leading: Icon(Icons.first_page),
               title: Text("Fifth"),
             ),
           ],
         ),
         GridView.extent(
           maxCrossAxisExtent: 200,
           children: [
             Image.asset("assets/images/1.jpg"),
             Image.asset("assets/images/2.jpg"),
             Image.asset("assets/images/3.jpg"),
             Image.asset("assets/images/1.jpg"),
             Image.asset("assets/images/2.jpg"),
             Image.asset("assets/images/3.jpg"),
             Image.asset("assets/images/1.jpg"),
             Image.asset("assets/images/2.jpg"),
           ],
         ),
         ListView.builder(
            itemCount: 10,
           itemBuilder: (context, index) =>
               ListTile(
                 title: Text("${index + 1} title"),
                 subtitle: Text("${index + 2} subtitle"),
           ),
          ),
         GridView.extent(
            maxCrossAxisExtent: 200,
            children: [
              Container(color: Colors.amberAccent,),
              Container(color: Colors.green,),
              Container(color: Colors.purple,),
              Container(color: Colors.teal,),
              Container(color: Colors.blueGrey,),
              Container(color: Colors.deepOrange,),
              Container(color: Colors.cyan,),
            ],
          ),
         Center(
           child: Column(
             children: [
               Container(
                 height: 200,
                 width: 300,
                 child: Card(
                   color: Colors.teal,
                   child: Row(
                     children: [
                     Container(
                       width: 50,
                       height: 50,
                       decoration: BoxDecoration(
                         color: Colors.greenAccent,
                         image: DecorationImage(
                             image: NetworkImage(
                             "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"),
                             fit: BoxFit.cover),

                       ),
                     ),
                       Column(
                         children: [
                            Text("Chameleon of Reptiles", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                            Text("Distinctive and highly specialized clade of Old World lizards with 200 species described as of June 2015.", style: TextStyle(fontSize: 16, color: Colors.deepPurple),),
                         ],
                       )
                   ],),
                 ),
               ),
             ],
           ),)
        ])
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
