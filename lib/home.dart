import 'package:flutter/material.dart';
import 'package:search/info.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingValue textEditingValue = const TextEditingValue();

  String item = '';
  static const List<String> listItems = [
    'flutter',
    'android',
    'ios',
    'java',
    'php',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Autocomplete<String>(
            optionsBuilder: (textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }
              return listItems.where((item) {
                return item.contains(textEditingValue.text.toLowerCase());
              });
            },
            onSelected: (String selection) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Info(info: selection),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
