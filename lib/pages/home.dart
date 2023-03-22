import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu App Bar'),
        centerTitle: true,
        elevation: 20,
        // leading: const Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey,
                    child: Text('A'),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Drawer Header',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.home),
                trailing: Text('Inicio'),
                contentPadding: EdgeInsets.symmetric(horizontal: 50),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('blablabla'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('blablabla'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('blablabla'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('blablabla'),
                ),
              ],
            ),
          ),
          Row(
            children: const [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Meu Card'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
