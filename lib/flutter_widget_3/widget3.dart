import 'package:flutter/material.dart';

class Widget3 extends StatelessWidget {
  const Widget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget 3'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // =====================================
              // 1. STACK
              // =====================================

              const Text(
                '1. Stack',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.blue,
                  ),

                  const Text(
                    'Hello Flutter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // =====================================
              // 2. SINGLE CHILD SCROLL VIEW
              // =====================================

              const Text(
                '2. SingleChildScrollView',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      height: 100,
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          'Item 1',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Container(
                      width: 150,
                      height: 100,
                      color: Colors.green,
                      child: const Center(
                        child: Text(
                          'Item 2',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Container(
                      width: 150,
                      height: 100,
                      color: Colors.orange,
                      child: const Center(
                        child: Text(
                          'Item 3',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // =====================================
              // 3. LIST VIEW
              // =====================================

              const Text(
                '3. ListView',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Container(
                height: 200,
                child: ListView(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Home'),
                      subtitle: Text('Halaman Home'),
                    ),

                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Profile'),
                      subtitle: Text('Halaman Profile'),
                    ),

                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Settings'),
                      subtitle: Text('Pengaturan'),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // =====================================
              // 4. GRID VIEW
              // =====================================

              const Text(
                '4. GridView',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  Container(
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        'Grid 1',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        'Grid 2',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        'Grid 3',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    color: Colors.orange,
                    child: const Center(
                      child: Text(
                        'Grid 4',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // =====================================
              // 5. TEXT FIELD
              // =====================================

              const Text(
                '5. TextField',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const TextField(
                decoration: InputDecoration(
                  labelText: 'Nama',
                  hintText: 'Masukkan nama',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Masukkan email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Masukkan password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}