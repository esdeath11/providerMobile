import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 180,
          color: Colors.grey,
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(right: 100, top: 30),
                  width: 75,
                  height: 75,
                  color: Colors.white,
                ),
              ),
              Container(

              ),
            ],
          ),
        ),
        for(var i = 0; i<3; i++)
          InkWell(
            child: Container(
                height: 75,
                padding: EdgeInsets.only(right: 80),
                child: Center(
                    child: Text('Profile'))
            ),
            onTap: (){
              Navigator.pushNamed(context, 'profile');
            },
          )
      ],
    );
  }
}
