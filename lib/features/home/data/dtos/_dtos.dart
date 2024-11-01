// ignore_for_file: public_member_api_docs, sort_constructors_first
class SampleData {
  String title;
  double duration;
  String type;
  String image;
  bool isFavorite;
  bool isAds;

  SampleData({
    required this.title,
    required this.duration,
    required this.type,
    required this.image,
    required this.isFavorite,
    required this.isAds,
  });
}

List<SampleData> simpleRecipes = [
  SampleData(title: 'Big and Juicy Wagyu Beef Cheeseburger', duration: 30, type: 'Snack', image: 'recipe1', isFavorite: false, isAds: false),
  SampleData(title: 'Fresh Lime Roasted Salmon with Ginger Sauce', duration: 30, type: 'Fish', image: 'recipe2', isFavorite: false, isAds: false),
  SampleData(
      title: 'Strawberry Oatmeal Pancake with Honey Syrup', duration: 45, type: 'Breakfast', image: 'recipe3', isFavorite: false, isAds: false),
  SampleData(title: 'Fresh and Healthy Mixed Mayonnaise Salad', duration: 30, type: 'Healthy', image: 'recipe4', isFavorite: false, isAds: false),
  SampleData(title: 'Chicken Meatballs with Cream Cheese', duration: 60, type: 'Meat', image: 'recipe5', isFavorite: false, isAds: false),
  SampleData(title: '', duration: 0, type: '', image: 'Ads', isFavorite: false, isAds: true),
  SampleData(title: 'Fruity Pancake with Orange & Blueberry', duration: 30, type: 'Sweet', image: 'recipe6', isFavorite: false, isAds: false),
  SampleData(title: 'The Best Easy One Pot Chicken and Rice', duration: 30, type: 'Snack', image: 'recipe7', isFavorite: false, isAds: false),
  SampleData(title: 'The Creamiest Creamy Chicken and Bacon Pasta', duration: 30, type: 'Noodles', image: 'recipe8', isFavorite: false, isAds: false),
];

List<SampleData> toTryRecipes = [
  SampleData(
      title: 'Mixed Tropical Fruit Salad with Superfood Boosts ', duration: 30, type: 'Healthy', image: 'recipe9', isFavorite: false, isAds: false),
  SampleData(title: 'Big and Juicy Wagyu Beef Cheeseburger', duration: 30, type: 'Western', image: 'recipe10', isFavorite: false, isAds: false),
  SampleData(title: 'Healthy Japanese Fried Rice with Asparagus', duration: 30, type: 'Healthy', image: 'recipe11', isFavorite: false, isAds: false),
  SampleData(title: 'Cauliflower Walnut Vegetarian Taco Meat', duration: 30, type: 'Eastern', image: 'recipe12', isFavorite: false, isAds: false),
  SampleData(
      title: 'Rainbow Chicken Salad with Almond Honey Mustard Dressing',
      duration: 30,
      type: 'Healthy',
      image: 'recipe13',
      isFavorite: false,
      isAds: false),
  SampleData(title: 'Barbeque Spicy Sandwiches with Chips ', duration: 30, type: 'Snack', image: 'recipe14', isFavorite: false, isAds: false),
  SampleData(title: 'Firecracker Vegan Lettuce Wraps - Spicy! ', duration: 30, type: 'Seafood', image: 'recipe15', isFavorite: false, isAds: false),
  SampleData(title: 'Chicken Ramen Soup with Mushroom ', duration: 30, type: 'Japanese', image: 'recipe16', isFavorite: false, isAds: false),
];

///
///

class SampleCategoriesData {
  int colorValue;
  String image;
  String imageShadow;
  String text;

  SampleCategoriesData({
    required this.colorValue,
    required this.image,
    required this.imageShadow,
    required this.text,
  });
}

List<SampleCategoriesData> categories = [
  SampleCategoriesData(colorValue: 0xFF708246, image: 'rice', imageShadow: 'rice_shadow', text: 'Breakfast'),
  SampleCategoriesData(colorValue: 0xFF6CC63F, image: 'lettuce', imageShadow: 'lettuce_shadow', text: 'Vegan'),
  SampleCategoriesData(colorValue: 0xFFCC261B, image: 'meat', imageShadow: 'meat_shadow', text: 'Meat'),
  SampleCategoriesData(colorValue: 0xFFF09E00, image: 'dessert', imageShadow: 'dessert_shadow', text: 'Dessert'),
  SampleCategoriesData(colorValue: 0xFFFF7426, image: 'lunch', imageShadow: 'lunch_shadow', text: 'Lunch'),
  SampleCategoriesData(colorValue: 0xFF3897F0, image: 'chocolate', imageShadow: 'chocolate_shadow', text: 'Chocolate'),
];
