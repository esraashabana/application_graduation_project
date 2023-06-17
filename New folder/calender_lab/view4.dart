
import 'package:flutter/material.dart';

import '../cancel2.dart';
import '../upcoming_sev.dart';
import '../upcoming_sevh.dart';
import 'cancel_lab.dart';
import 'completed_lab.dart';

class view4 extends StatefulWidget {
  const view4({Key? key}) : super(key: key);

  @override
  State<view4> createState() => _view4State();
}

class _view4State extends State<view4> {
  String value='';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
        appBar: AppBar(backgroundColor:Colors.white,
          title:const Text('My Appointment',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          //centerTitle:true,
          //  leading: Icon(Icons.account_box),
          bottom: TabBar(tabs: [
            Tab(child:Text( 'Upcoming',style: TextStyle(fontSize: 16,color: Colors.black),)),
            Tab(child:Text( 'Complete',style: TextStyle(fontSize: 16,color: Colors.black),)),
            Tab(child:Text( 'Cancel',style: TextStyle(fontSize: 16,color: Colors.black),)),
            //  Tab(text: 'profile',icon:Icon( Icons.account_box),),

          ]),

        ),
        body: TabBarView(children: [
          upcomingsev(),
          completedLab(),
          cancel_lab(),

        ])
    ));
  }
}
