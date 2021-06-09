import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                color: Colors.black54,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Name'),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, top: 220, bottom: 10),
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );


  }
}

