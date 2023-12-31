import 'package:exapro/controller/provider_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[400],
      body: Consumer<ContProvider>(
        builder: (context, value, child) => Column(
          children: [
            Center(
              child: Text(
                '${value.counter}',
                style: const TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  value.number();
                },
                child: const Text('increment')),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  value.lower();
                },
                child: const Text('decrement'))
          ],
        ),
      ),
    );
  }
}
