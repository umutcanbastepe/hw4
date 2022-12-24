import 'package:flutter/material.dart';
import 'package:homework4/sayfa_y.dart';

class SayfaB extends StatefulWidget{
  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB>{
  Future<bool> geriTusu(BuildContext context) async{
    print("hi");
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayfa B"),
      ),
      body: WillPopScope(onWillPop: ()=> geriTusu(context),
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaY() ));
                });}, child: const Text("Y'e Git")),
            ],
          ),
        ),
      ),
    );
  }
}