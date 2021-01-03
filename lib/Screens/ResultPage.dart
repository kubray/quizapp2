import 'package:flutter/material.dart';



class ResultPage  extends StatefulWidget {
  int score;
  ResultPage({Key key,this.score}):super(key: key);
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: Text(' Sonuç '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          CircleAvatar(

            backgroundImage: AssetImage('assets/success.jpg.jpg',
            ),
            radius: 150,
          ),
SizedBox(
  width:20,
  height: 20,
),

          Text('Tebrikler! Puanınız',style: TextStyle(fontSize: 30, color: Colors.deepPurple)),
          SizedBox(
            width:20,
            height: 20,
          ),
          Text('${widget.score}', style:TextStyle(fontSize: 60, fontWeight: FontWeight.bold),),
        ],
      )
    );
  }
}
