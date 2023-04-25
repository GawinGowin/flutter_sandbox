import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Home'),
        centerTitle: true,
        elevation: 10,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            children: [
              for (var i = 0; i < 21; i++)
              Container(
                width: 100, height: 100, color: Colors.blue,
                margin: const EdgeInsets.all(10),
                child: const Center(child: Text("ここをクリックでページ遷移"))
              )
            ],
          ),
        ),
      )
    );
  }
}