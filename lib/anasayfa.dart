import 'package:flutter/material.dart';
import 'package:homework4/sayfa_a.dart';
import 'package:homework4/sayfa_x.dart';

class Anasayfa extends StatefulWidget{
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();

}

class _AnasayfaState extends State<Anasayfa> with WidgetsBindingObserver{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Anasayfa"),),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaA() ));
              });}, child: const Text("A'ya Git")),
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaX() ));
              });}, child: const Text("X'e Git")),
          ],
        ),
      ),
    );
  }
}