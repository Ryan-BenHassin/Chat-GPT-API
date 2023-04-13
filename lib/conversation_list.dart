import 'package:chat_gpt/conversation.dart';
import 'package:flutter/material.dart';

class ConverstaionList extends StatefulWidget {
  @override
  _ConverstaionListState createState() => _ConverstaionListState();
}

class _ConverstaionListState extends State<ConverstaionList> {
  final TextEditingController _controller = TextEditingController();
  static List<String> blocks = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color.fromRGBO(105, 102, 102, 1),
      color: Color(0xFF2C2F33),
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topRight,
              // color: Colors.pink,
              child: ListView.builder(
                itemCount: blocks.length,
                padding: EdgeInsets.all(0),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        // title: Text(blocks[index], style: const TextStyle(color: Colors.white),),
                        title: Question(question: blocks[index]),
                      ),

                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        // title: Text(blocks[index], style: const TextStyle(color: Colors.white),),
                        title: Answer(answer: "Answer !!"),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              maxLines: null,
              controller: _controller,
              style: const TextStyle(color: Colors.white),
              decoration: discordDecoration(onPressed: (){
                setState(() {
                  blocks.add(_controller.text);
                  _controller.clear();
                });
              })
            ),
          ),
    
    
          /* ElevatedButton(
            onPressed: () {
              setState(() {
                blocks.add(_controller.text);
                _controller.clear();
              });
            },
            child: Text('Submit'),
          ), */
          
        ],
      ),
    );
  }
}

InputDecoration discordDecoration({String? text, void Function()? onPressed}){
  return InputDecoration(
    hintText: text ?? 'Type your message...',
    hintStyle: const TextStyle(color: Colors.white),
    filled: true,
    fillColor: Color.fromARGB(255, 65, 70, 75),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.0),
      borderSide: BorderSide(color: Colors.transparent),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.0),
      borderSide: BorderSide(color: Colors.transparent),
    ),
    suffixIcon: IconButton(
      icon: const Icon(Icons.send, color: Color(0xFF5865F2),),
      onPressed: onPressed
    ),
  );
}