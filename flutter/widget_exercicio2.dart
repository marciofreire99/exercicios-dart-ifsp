import 'package:flutter/material.dart';

void main() {
  runApp(const FabApp());
}

class FabApp extends StatelessWidget {
  const FabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FabPage(),
    );
  }
}

class FabPage extends StatefulWidget {
  const FabPage({super.key});

  @override
  State<FabPage> createState() => _FabPageState();
}

class _FabPageState extends State<FabPage> {
  int _selectedIndex = 0;
  bool _showExtraOptions = false;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _showExtraOptions = false;
    });
  }

  void _onFabPressed() {
    setState(() {
      _showExtraOptions = !_showExtraOptions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exercício 2 - FAB")),
      body: Center(
        child: _showExtraOptions
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Opção 1 extra"),
                  Text("Opção 2 extra"),
                ],
              )
            : Text("Página ${_selectedIndex + 1}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onFabPressed,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
          ],
        ),
      ),
    );
  }
}