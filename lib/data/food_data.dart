import '../models/food.dart';

class FoodData {
  static const List<Food> foods = [
    Food(
      name: 'O‘zbek palovi',
      category: 'Milliy taomlar',
      description: 'An’anaviy o‘zbek palovi. Guruch, go‘sht, sabzi, piyoz va maxsus ziravorlardan tayyorlanadi.',
      imageUrl:
          'https://images.unsplash.com/photo-1512058564366-18510be2db19?w=600',
      price: 35000,
      ingredients: ['Guruch', 'Mol go‘shti', 'Sabzi', 'Piyoz', 'Zira'],
    ),

    Food(
      name: 'Pizza Margarita',
      category: 'Fast Food',
      description: 'Pomidor sousi, mozzarella pishlog‘i va yangi rayhon bilan tayyorlangan italyan pitsasi.',
      imageUrl:
          'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=600',
      price: 65000,
      ingredients: ['Xamir', 'Mozzarella', 'Pomidor', 'Rayhon'],
    ),

    Food(
      name: 'Gamburger',
      category: 'Fast Food',
      description: 'Yumshoq bulochka orasida mol go‘shti kotleti, pishloq, salat va maxsus sous.',
      imageUrl:
          'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600',
      price: 40000,
      ingredients: ['Bulochka', 'Mol go‘shti', 'Pishloq', 'Salat', 'Sous'],
    ),

    Food(
      name: 'Sezar salati',
      category: 'Salatlar',
      description:
          'Tovuq go‘shti, yangi salat barglari, pomidor va maxsus Sezar sousi.',
      imageUrl:
          'https://images.unsplash.com/photo-1546793665-c74683f339c1?w=600',
      price: 30000,
      ingredients: [
        'Tovuq go‘shti',
        'Salat bargi',
        'Pomidor',
        'Pishloq',
        'Sous',
      ],
    ),

    Food(
      name: 'Shashlik',
      category: 'Milliy taomlar',
      description: 'Ko‘mirda pishirilgan, ziravorlar bilan marinadlangan mazali go‘sht shashligi.',
      imageUrl:
          'https://images.unsplash.com/photo-1544025162-d76694265947?w=600',
      price: 25000,
      ingredients: ['Mol go‘shti', 'Piyoz', 'Tuz', 'Ziravorlar'],
    ),

    Food(
      name: 'Shokoladli tort',
      category: 'Desertlar',
      description:
          'Yumshoq biskvit, shokolad kremi va kakao bilan tayyorlangan desert.',
      imageUrl:
          'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=600',
      price: 28000,
      ingredients: ['Un', 'Shokolad', 'Tuxum', 'Sut', 'Shakar'],
    ),

    Food(
      name: 'Mevali ichimlik',
      category: 'Ichimliklar',
      description: 'Yangi mevalardan tayyorlangan salqin va mazali ichimlik.',
      imageUrl:
          'https://images.unsplash.com/photo-1544145945-f90425340c7e?w=600',
      price: 18000,
      ingredients: ['Apelsin', 'Limon', 'Muz', 'Suv'],
    ),
  ];
}
