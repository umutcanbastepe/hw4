import 'package:flutter/material.dart';
import 'package:homework4/sayfa_b.dart';

class SayfaA extends StatefulWidget{
  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA>{
  Future<bool> geriTusu(BuildContext context) async{
    print("hi");
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayfa A"),
      ),
      body: WillPopScope(onWillPop: ()=> geriTusu(context),
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaB() ));
                });}, child: const Text("B'e Git")),
            ],
          ),
        ),
      ),
    );
  }
}