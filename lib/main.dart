
import 'package:flutter/material.dart';

void main() {
  runApp(const FruitApp());
}

class FruitApp extends StatelessWidget {
  const FruitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fruit Basket'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: Column(
  children: [
    Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      color: Colors.green.shade50,
      child: const Column(
        children: [
          Text(
            'Fresh Fruits',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text('Healthy food, happy life!'),
        ],
      ),
    ),
        
Expanded(
  child: ListView(
    children: const [
      FruitCard(
        name: 'Apple',
        emoji: '≡ƒìÄ',
        description: 'Crisp and sweet',
        price: 'Γé╣100/kg',
      ),

      FruitCard(
        name: 'Banana',
        emoji: '≡ƒìî',
        description: 'Energy booster',
        price: 'Γé╣60/kg',
      ),

      FruitCard(
        name: 'Grapes',
        emoji: '≡ƒìç',
        description: 'Juicy and fresh',
        price: 'Γé╣120/kg',
      ),

      FruitCard(
        name: 'Orange',
        emoji: '≡ƒìè',
        description: 'Rich in Vitamin C',
        price: 'Γé╣80/kg',
      ),
      FruitCard(
  name: 'Mango',
  emoji: '≡ƒÑ¡',
  description: 'King of fruits',
  price: 'Γé╣150/kg',
),

FruitCard(
  name: 'Watermelon',
  emoji: '≡ƒìë',
  description: 'Refreshing fruit',
  price: 'Γé╣40/kg',
),
    ],
  ),
),

  ],
),
      ),
    );
  }
}

class FruitCard extends StatelessWidget {
  final String name;
  final String emoji;
  final String description;
  final String price;

  const FruitCard({
    super.key,
    required this.name,
    required this.emoji,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.green.shade50,
              child: Text(
                emoji,
                style: const TextStyle(fontSize: 35),
              ),
            ),

            const SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(description),
                  Text(
                    price,
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

