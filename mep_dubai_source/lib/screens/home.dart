import 'package:flutter/material.dart';
import '../services/qa_service.dart';
class HomeScreen extends StatefulWidget {
  final VoidCallback onToggleTheme;
  HomeScreen({required this.onToggleTheme});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _q = TextEditingController();
  String _answer = '';
  bool _loading = false;
  void ask() async {
    setState(()=>_loading=true);
    final resp = await QAService.askQuestion(_q.text);
    setState(()=>_answer=resp ?? 'No answer', _loading=false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MEP Dubai Q&A'),
        actions: [IconButton(icon: Icon(Icons.color_lens), onPressed: widget.onToggleTheme)],
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(controller: _q, decoration: InputDecoration(labelText: 'Ask about Dubai MEP regs')),
            SizedBox(height:8),
            ElevatedButton(onPressed: _loading?null:ask, child: _loading?CircularProgressIndicator():Text('Ask')),
            SizedBox(height:16),
            Expanded(child: SingleChildScrollView(child: Text(_answer))),
          ],
        ),
      ),
    );
  }
}
