import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      length: 5,

      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.greenAccent,

          title: Text("Lab 5"),

          bottom: TabBar(
            isScrollable: true,
              tabs:[
            Tab(icon: Icon(Icons.list),),
            Tab(icon: Icon(Icons.grid_4x4),),
            Tab(text: "2",),
            Tab(text: "3",),
            Tab(text: "4",),
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
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                   ),
                   color: Colors.lightGreen,
                   elevation: 10,
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       ListTile(
                        leading: Container(
                          width: 80,
                          decoration:   BoxDecoration(
                            color: Colors.greenAccent,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"),
                                fit: BoxFit.cover,
                                ),

                          ),
                        ),
                          title: Text("Chameleon of Reptiles", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                          subtitle: Text("Distinctive and highly specialized clade of Old World lizards with 200 species described as of June 2015.", style: TextStyle(fontSize: 14, color: Colors.deepPurple),),

                       ),



                     ],
                   ),
                 ),
               ),
               Container(
                 height: 200,
                 width: 300,
                 child: Card(
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20)
                   ),
                   color: Colors.blueGrey,
                   elevation: 10,
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       ListTile(
                        leading: Image.asset("assets/images/1.jpg",  width: 80, fit: BoxFit.cover,),
                          title: Text("Ocean", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.yellow),),
                          subtitle: Text("A huge body of saltwater that covers about 71 percent of Earth's surface.", style: TextStyle(fontSize: 15, color: Colors.yellow),),

                       ),
                      ElevatedButton(onPressed: (){}, child: Text("Get more info")),


                     ],
                   ),
                 ),
               ),
               Container(
                 height: 200,
                 width: 300,
                 child: Card(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(30)
                   ),
                   color: Colors.amber,
                   elevation: 10,
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       ListTile(
                        leading: Image.asset("assets/images/2.jpg",  width: 80, fit: BoxFit.cover,),
                          title: Text("Cats", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.orange),),
                          subtitle:
                          Text("The cat (Felis catus), also referred to as the domestic cat, is a small domesticated carnivorous mammal.", style: TextStyle(fontSize: 15, color: Colors.orange),),

                       ),



                     ],
                   ),
                 ),
               ),

             ],
           ),
         ),
          Center(
            child: ButtonTheme(
              minWidth: 60,
              height: 50,
              child: OutlinedButton(
                  onPressed: ()  {
                     Fluttertoast.showToast(
                        msg: "You pressed on the toast button",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 3,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }, child: Text("Show notification")),
            ),
          )
        ]),
        drawer: Drawer(
          child:  ListView(
            children: [
               DrawerHeader(
                  child: UserAccountsDrawerHeader(
                      accountName: Text("Kamila"),
                      accountEmail: Text("kamila.tuichieva@kimep.kz"),
                      currentAccountPicture: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle, color: Colors.lightGreen
                        ),
                      ),
                  )),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Home tapped'),
                      ));
                },
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Profile"),
                onTap: (){
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                    content: Text('Profile tapped'),
                  ));
                },
              ), ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: (){
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Settings tapped'),
                      ));
                },
              ), ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: (){
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Logout tapped'),
                      ));
                },
              ),
            
            
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
