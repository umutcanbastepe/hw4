import 'package:flutter/material.dart';

class SayfaY extends StatefulWidget{
  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY>{
  Future<bool> geriTusu(BuildContext context) async{
    Navigator.of(context).popUntil((route) => route.isFirst);
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayfa Y"),
      ),
      body: WillPopScope(onWillPop: ()=> geriTusu(context),
        child: Center(
            //if you want to see back button view the code written below
        ),
      ),
    );
  }
}

/*child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
ElevatedButton(onPressed: (){
setState(() {
Navigator.of(context).popUntil((route) => route.isFirst);
});}, child: const Text("Başlangıça Geri Dön")),
],
),*/