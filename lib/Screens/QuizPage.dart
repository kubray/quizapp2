

import 'package:flutter/material.dart';
import 'package:quizapp/Screens/ResultPage.dart';
import 'package:quizapp/Service/Questions.dart';
import 'package:quizapp/Service/QuizManager.dart';

import 'package:flutter/material.dart';



class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizManager _manager=QuizManager();
  Future<void> quizloader;
  List<Widget> getOptions(Questions question){
    List<Widget> optionButtons=[];
    for(int i=0; i<question.options.length; i++){
      optionButtons.add(
        FlatButton(
          onPressed: () {
            _manager.nextQuestion(_manager.getCurrentQuestion().options[i].score);
            if(
            _manager.isFinished()){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ResultPage(score: _manager.getTotalScore(),
                ),
                ),
              );
            }


            setState(() {

            });
          },



          child: Container(

            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(

              '${_manager.getCurrentQuestion().options[i].text}',

              style:TextStyle( fontSize: 15,

              ),



            ),
          ),
        ),





      );
    }
    return optionButtons;
  }

  @override
  void initState() {
    super.initState();
    quizloader=_manager.LoadQuestions(10);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Question ${_manager.getCurrentId()}/${_manager.totalQuestionNumber()}'
        ),

      ),
      body: FutureBuilder<void>(
        future: quizloader,
        builder: (BuildContext context, AsyncSnapshot<void> snapshot){
          if(snapshot.connectionState == ConnectionState.done) {
            return Container(

              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    flex:2,
                    child: Container(
                      height:30,
                      padding:EdgeInsets.symmetric(vertical:30),
                      child: Text(
                        '${_manager.getCurrentQuestion().text}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex:4,
                    child:   Container(

                      padding: EdgeInsets.symmetric(horizontal:20),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: getOptions(_manager.getCurrentQuestion(),
                        ),
                      ),
                    ),

                  ),

                ],
              ),
            );





          } else{
            return Center( child: CircularProgressIndicator());
          }
        }
      ),


    );


  }
}
