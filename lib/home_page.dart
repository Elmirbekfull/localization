import 'package:flutter/material.dart';
import 'package:local_app/generated/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextStyle _styleText =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(S.of(context).goodMorning),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child:
                IconButton(onPressed: () {}, icon: const Icon(Icons.language)),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              S.of(context).region,
              style: _styleText,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Image.asset(S.of(context).flag),
            ),
            Text(
              S.of(context).hello,
              style: _styleText,
            ),
          ],
        ),
      ),
    );
  }
}
