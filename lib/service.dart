import 'dart:convert';
import 'package:http/http.dart' as http;
class ConversationService{
  

Future<String> sendMessageToChatGPT(String question) async {
  const apiKey="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";
  const url = 'https://api.openai.com/v1/chat/completions';
  final headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $apiKey',
  };
  /* final body = {
    'prompt': question,
    'temperature': 0.7,
    'max_tokens': 150,
    'stop': '\n',
    'engine': 'davinci'
  }; */

  final body = {
     "model": "gpt-3.5-turbo",
     "messages": [{"role": "user", "content": question}],
     "temperature": 0.7
   };

  final response = await http.post(Uri.parse(url), headers: headers, body: json.encode(body));
  if (response.statusCode == 200) {
    final result = json.decode(response.body)['choices'][0]['message']["content"];
    return result?? "Nothing";
  } else {
    throw Exception('Failed to generate chat: ${response.statusCode}');
  }
}




Future<String> getChatResponse(String message) async {
  final apiUrl = "https://api.chatgpt.com/v1/predictions";
  const apiKey="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";
  final headers = {
    "Content-Type": "application/json",
    "Authorization": "Bearer $apiKey",
  };
  final body = json.encode({"text": message});

  final response = await http.post(Uri.parse(apiUrl), headers: headers, body: body);
  if (response.statusCode == 200) {
    final responseBody = json.decode(response.body);
    final chatResponse = responseBody["generated_text"];
    return chatResponse;
  } else {
    throw Exception("Failed to get chat response");
  }
}
}