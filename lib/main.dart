import 'package:flutter/material.dart';
import 'package:learnprovider/Data/DataApi.dart';
import 'package:learnprovider/Data/model.dart';
import 'package:learnprovider/Drawer/drawer.dart';
import 'package:learnprovider/profile.dart';
import 'package:provider/provider.dart';

void main(
    ) => runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>MyApp(),
        'profile':(context)=>Profile(),

      },
      theme: ThemeData(
          primaryColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
    ),
);


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text('Cmlabs'),
        ),
        drawer: Drawer(
          child: DrawerMenu(),
        ),
        body: ChangeNotifierProvider(
          create: (_)=> MyModel(),
          child: IndexedStack(
            children: [
              InkWell(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueAccent,
                ),
                onTap: (){
                  setState(() {
                    DataAPI().getData();
                    MyModel().addCount();
                  });

                },
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_rounded),
                label: 'Dashboard'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_rounded),
                label: 'Account'
            )
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,

        ),
      );
  }
}

