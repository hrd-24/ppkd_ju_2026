import 'package:flutter/material.dart';

class Widget2 extends StatelessWidget {
  const Widget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // CONTAINER
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'HEADER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            // SIZEDBOX
            const SizedBox(
              height: 20,
            ),

            // EXPANDED
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.grey[200],
                child: const Center(
                  child: Text(
                    'CONTENT',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),

            // SIZEDBOX
            const SizedBox(
              height: 20,
            ),

            // ROW + SPACER
            Row(
              children: [
                const Text(
                  'Footer',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),

                const Spacer(),

                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Button'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}