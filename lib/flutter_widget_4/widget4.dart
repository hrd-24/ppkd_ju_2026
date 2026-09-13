import 'package:flutter/material.dart';

class Widget4 extends StatefulWidget {
  const Widget4({super.key});

  @override
  State<Widget4> createState() => _Widget4State();
}

class _Widget4State extends State<Widget4> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget 4'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ==========================================
            // 1. STATELESS WIDGET
            // ==========================================

            const Text(
              '1. StatelessWidget',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const MyText(),

            const SizedBox(height: 30),

            // ==========================================
            // 2. STATEFUL WIDGET
            // ==========================================

            const Text(
              '2. StatefulWidget',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              'Counter: $counter',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // ==========================================
            // 3. ELEVATED BUTTON
            // ==========================================

            const Text(
              '3. ElevatedButton',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Text('Tambah Counter'),
            ),

            const SizedBox(height: 30),

            // ==========================================
            // 4. ICON BUTTON
            // ==========================================

            const Text(
              '4. IconButton',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            IconButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              icon: const Icon(
                Icons.add,
                size: 30,
              ),
            ),

            const SizedBox(height: 30),

            // ==========================================
            // 5. TEXT BUTTON
            // ==========================================

            const Text(
              '5. TextButton',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            TextButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              child: const Text('Reset Counter'),
            ),

            const SizedBox(height: 30),

            // ==========================================
            // 6. INKWELL
            // ==========================================

            const Text(
              '6. InkWell',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            InkWell(
              onTap: () {
                setState(() {
                  counter++;
                });
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'Klik InkWell',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ==========================================
            // 7. GESTURE DETECTOR
            // ==========================================

            const Text(
              '7. GestureDetector',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            GestureDetector(
              onTap: () {
                setState(() {
                  counter++;
                });
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'Klik GestureDetector',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ==========================================
            // 8. FLOATING ACTION BUTTON
            // ==========================================

            const Text(
              '8. FloatingActionButton',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Tombol FloatingActionButton berada di bawah kanan layar.',
            ),

            const SizedBox(height: 80),
          ],
        ),
      ),

      // ==========================================
      // FLOATING ACTION BUTTON
      // ==========================================

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


// ==================================================
// STATELESS WIDGET
// ==================================================

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Ini adalah StatelessWidget',
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }
}