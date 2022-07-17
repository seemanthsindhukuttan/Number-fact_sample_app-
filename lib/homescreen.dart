import 'package:flutter/material.dart';
import 'package:number_fact_api/api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? data;
  final numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("Number Facts"),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              data ?? 'Type number',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: numberController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'Enter number to get fact',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            suffixIcon: IconButton(
              onPressed: () async {
                if (numberController.text.isNotEmpty) {
                  var value =
                      await getNumberFact(number: numberController.text);

                  setState(() {
                    data = value.text;
                  });
                  numberController.clear();
                }
              },
              icon: const Icon(
                Icons.send,
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
