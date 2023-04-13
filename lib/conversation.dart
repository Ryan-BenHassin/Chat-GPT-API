import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Question extends StatefulWidget {
  String question;
  Question({super.key, required this.question});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      color: Color.fromARGB(70, 8, 8, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.person, size: 35, color: Colors.white,),
          ),
    
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
              // color: Colors.black,
              child: Text(
                widget.question,
                style: const TextStyle(color: Colors.white)
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Answer extends StatefulWidget {
  String answer;
  Answer({super.key, required this.answer});

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      // color: Color.fromARGB(112, 20, 19, 19),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 35,
              width: 35,
              child: Image.asset("assets/images/chatgpt-icon.png")
            ),
          ),
    
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
              // color: Colors.black,
              child: Text(
                widget.answer,
                style: const TextStyle(color: Colors.white)
              ),
            ),
          )
        ],
      ),
    );
  }
}