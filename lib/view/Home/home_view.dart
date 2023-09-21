import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  getuserdata(){
    try{
      firestore.collection('client data').where("age",isLessThan: 20).get().then((value) => {
        debugPrint("")
      },);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    getuserdata();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [],
      ),
    );
  }
}
