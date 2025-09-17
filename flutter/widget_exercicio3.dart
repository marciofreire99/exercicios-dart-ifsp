import 'package:flutter/material.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),
    );
  }
}

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final List<Map<String, dynamic>> _tasks = [
    {"title": "Estudar Flutter", "done": false},
    {"title": "Fazer exercício 3", "done": false},
    {"title": "Enviar para o professor", "done": false},
  ];

  void _toggleTask(int index, bool? value) {
    setState(() {
      _tasks[index]["done"] = value ?? false;
    });
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Atenção"),
          content: const Text("Você está no App de Notas de Tarefas"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Ok"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exercício 3 - Lista de Tarefas")),
      body: ListView.builder(
        itemCount: _tasks.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              title: Text(_tasks[index]["title"]),
              trailing: Checkbox(
                value: _tasks[index]["done"],
                onChanged: (value) => _toggleTask(index, value),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showDialog,
        child: const Icon(Icons.info),
      ),
    );
  }
}