// ignore_for_file: dead_code, prefer_conditional_assignment

import 'package:flutter/material.dart';
import 'clauns.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(child: MainApp(), create: (context) => Cluans()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: ()=> 1, icon: Icon(Icon.))],title: const Text("Cluans"),),
      body: Center(child: ListViewPlayground(cluans: context.watch<Cluans>())),
    );
  }
}

class ListViewPlayground extends StatelessWidget {
  final Cluans cluans;

  const ListViewPlayground({super.key, required this.cluans});

  void addCluan() {
    cluans.addCluan(clue: 'Fester', answer: 'Christopher Lloyd');
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Column(
        children: [
          ElevatedButton(onPressed: addCluan, child: Text('Add Cluan')),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 700,
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    Divider(color: Colors.white, thickness: 1.0),
                itemCount: cluans.cluanContent.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    cluans.cluanContent[index].clue!,
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    cluans.cluanContent[index].answer!,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
