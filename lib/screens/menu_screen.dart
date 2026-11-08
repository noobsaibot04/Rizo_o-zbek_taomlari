import 'package:flutter/material.dart';

import '../data/food_data.dart';
import '../models/food.dart';
import '../widgets/food_card.dart';
import '../widgets/category_chip.dart';
import 'food_detail_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  String selectedCategory = 'Barchasi';

  final List<String> categories = [
    'Barchasi',
    'Milliy taomlar',
    'Fast Food',
    'Salatlar',
    'Desertlar',
    'Ichimliklar',
  ];

  @override
  Widget build(BuildContext context) {
    List<Food> filteredFoods = selectedCategory == 'Barchasi'
        ? FoodData.foods
        : FoodData.foods
              .where((food) => food.category == selectedCategory)
              .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF9F4),
        title: const Text(
          'Mazali Restaurant',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
          ),
        ),
        centerTitle: true,
        leading: const Icon(Icons.restaurant_menu, color: Colors.deepOrange),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 15, 16, 5),
            child: Text(
              'Bizning menyu',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'O‘zingiz yoqtirgan taomni tanlang!',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            height: 45,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: categories.length,

              itemBuilder: (context, index) {
                final category = categories[index];

                return CategoryChip(
                  title: category,
                  isSelected: selectedCategory == category,

                  onTap: () {
                    setState(() {
                      selectedCategory = category;
                    });
                  },
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          Expanded(
            child: filteredFoods.isEmpty
                ? const Center(child: Text('Taomlar topilmadi'))
                : GridView.builder(
                    padding: const EdgeInsets.all(16),

                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 14,
                          mainAxisSpacing: 14,
                          childAspectRatio: 0.72,
                        ),

                    itemCount: filteredFoods.length,

                    itemBuilder: (context, index) {
                      final food = filteredFoods[index];

                      return FoodCard(
                        food: food,

                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return FoodDetailScreen(food: food);
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
