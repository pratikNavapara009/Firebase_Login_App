import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).popAndPushNamed("welcome");
          },
          icon: const Icon(Icons.arrow_back_ios_new_sharp,size: 30,),
        ),
        title: Text("HomePage"),
      ),
      body: Container(
        alignment: Alignment.center,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add,size: 30,),
      ),
    );
  }
}
