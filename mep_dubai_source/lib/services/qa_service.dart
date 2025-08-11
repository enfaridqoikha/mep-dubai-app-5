import 'dart:convert';
import 'package:http/http.dart' as http;
class QAService {
  // NOTE: replace with your serverless endpoint that proxies to OpenAI and fetches DEWA/reg docs.
  static const String backendEndpoint = 'https://your-backend.example.com/ask';
  static Future<String?> askQuestion(String q) async {
    if (q.trim().isEmpty) return null;
    try {
      final r = await http.post(Uri.parse(backendEndpoint), body: json.encode({'question': q}));
      if (r.statusCode==200) {
        final j = json.decode(r.body);
        return j['answer'] ?? j['result'] ?? 'No result';
      } else {
        return 'Error: ${r.statusCode}';
      }
    } catch (e) {
      return 'Exception: \$e';
    }
  }
}
