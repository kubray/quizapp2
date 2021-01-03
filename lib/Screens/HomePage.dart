
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/Screens/QuizPage.dart';



void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => QuizPage ()
  ),
  );

}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.pink[100],
      appBar: AppBar(
      title:Center(
      child :Text('QuizClass',

      style: TextStyle(
        color: Colors.purple,




      ),

      ),
      ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        brightness: Brightness.light,
      ),


      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center ,

        children:[
          Container(

            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal:12),

            child: Text('Merhaba! Öncelikle kategorini seçmelisin.',

            style:TextStyle(
              fontSize:20,
              fontWeight: FontWeight.bold,

            ),
            ),
          ),
        SizedBox(
          height:30,
        ),
        RaisedButton(
          onPressed: () { gotoQuizPage(context);},
        child:Text('HİSTORY'),
          color: Colors.pinkAccent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.red)
          ),
        ),

          RaisedButton(
            onPressed: () { gotoQuizPage(context);},
            child:Text('SCİENCE'),
            color: Colors.pinkAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.red)
            ),
          ),
          RaisedButton(
            onPressed: () { gotoQuizPage(context);},
            child:Text('MATH'),
            color: Colors.pinkAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.red)
            ),
          ),
          SizedBox(

            height: 30,
          ),


          Container(

            child: Text('Şimdi soru sayısını seçmelisin.',
              style:TextStyle(
                fontSize:20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width:3,
            height: 30,
          ),


          Row(
            children: [
              SizedBox(
                width:20,

              ),

              RaisedButton(
                onPressed: () { gotoQuizPage(context);},
                child:Text('5'),
                color: Colors.lightBlueAccent,
                shape: CircleBorder(
                    side: BorderSide(color: Colors.blueAccent)
                ),
              ),
              SizedBox(
                width:7,

              ),
              RaisedButton(
                onPressed: () { gotoQuizPage(context);},
                child:Text('10'),
                color: Colors.lightBlueAccent,
                shape: CircleBorder(
                    side: BorderSide(color: Colors.blueAccent)
                ),
              ),
              SizedBox(
                width:7,

              ),
              RaisedButton(
                onPressed: () { gotoQuizPage(context);},
                child:Text('15'),
                color: Colors.lightBlueAccent,
                shape: CircleBorder(
                    side: BorderSide(color: Colors.blueAccent)
                ),
              ),
              SizedBox(
                width:7,

              ),
              RaisedButton(
                onPressed: () { gotoQuizPage(context);},
                child:Text('20'),
                color: Colors.lightBlueAccent,
                shape: CircleBorder(
                    side: BorderSide(color: Colors.blueAccent)
                ),
              ),






            ],
          ),
          SizedBox(

            height: 30,
          ),
 Container(
   child: Text('Şimdi soru zorluk seviyesini seçmelisin.',
     style:TextStyle(
       fontSize:20,
       fontWeight: FontWeight.bold,
     ),
   ),
 ),
          SizedBox(

            height: 30,
          ),

          Row(

            children: [

              SizedBox(
                width:50,

              ),


              RaisedButton(
                onPressed: () { gotoQuizPage(context);},
                child:Text(''),
                color: Colors.yellow,
                shape:
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.0),
                    side: BorderSide(color: Colors.yellowAccent),

                ),
              ),
              SizedBox(
                width:15,

              ),
              RaisedButton(
                onPressed: () { gotoQuizPage(context);},
                child:Text(''),
                color: Colors.lightGreenAccent,
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.0),
                  side: BorderSide(color: Colors.lightGreenAccent),

                ),
              ),
              SizedBox(
                width:15,

              ),
              RaisedButton(
                onPressed: () { gotoQuizPage(context);},
                child:Text(''),
                color: Colors.red,
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.0),
                  side: BorderSide(color: Colors.red),
                ),
                ),



            ],
          )





        ],
      ),


    );
  }

}

