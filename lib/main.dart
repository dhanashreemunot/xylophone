import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() {
  runApp( MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown.shade900,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              ontap(Colors.indigo.shade700,1,380,'C'),
              SizedBox(height: 20),
              ontap(Colors.indigo.shade600,2,370,'D'),
              SizedBox(height: 20),
              ontap(Colors.indigo.shade500,3,360,'E'),
              SizedBox(height: 20),
              ontap(Colors.indigo.shade400,4,350,'F'),
              SizedBox(height: 20),
              ontap(Colors.indigo.shade300,5,340,'G'),
              SizedBox(height: 20),
              ontap(Colors.indigo.shade200,7,330,'A'),
              SizedBox(height: 20),
              ontap(Colors.indigo.shade100,6,320,'B'),
              SizedBox(height: 20),
              ontap(Colors.indigo.shade50,8,310,'C'),
              SizedBox(height: 20),









            ],
          ),
        ),
      )));
}
class circle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 15.0,
      width: 15.0,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.yellow,
              blurRadius: 5.0,
              spreadRadius: 5.0,
            ),
          ]
      ),
    );
  }

}
class ontap extends StatelessWidget{
  @override
  var mycolor;
  int soundNumber;
  String mytext;
  double mywidth;
  ontap(this.mycolor,@required this.soundNumber,this.mywidth,this.mytext);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('$soundNumber.wav');
  }

  Widget build(BuildContext context) {
   return Expanded(

       child:GestureDetector(

         child: Center(

           child: Container(
             width: mywidth,
             height: 80,

             decoration: BoxDecoration(
               color: mycolor,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight:Radius.circular(40),bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30) ),

             ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  circle(),
                   Text(mytext,style: TextStyle(
                     fontSize: 30,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),),
                   circle(),
                 ],
               ),
           ),
         ),
     onTap: (){
       playSound(soundNumber);

     },
       ),
   );
  }
}