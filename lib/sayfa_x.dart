import 'package:flutter/material.dart';
import 'package:homework4/sayfa_y.dart';

class SayfaX extends StatefulWidget{
  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX>{
  Future<bool> geriTusu(BuildContext context) async{
    print("hi");
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayfa X"),
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