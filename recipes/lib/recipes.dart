class Recipe {
  final String name;
  final String imgUrl;

  Recipe({
    required this.name,
    required this.imgUrl,
  });

  static List<Recipe> recipes = [
    Recipe(
        name: 'BeaverTails',
        imgUrl:
            'https://www.themealdb.com/images/media/meals/ryppsv1511815505.jpg'),
    Recipe(
      name: 'Fish fofos',
      imgUrl:
          'https://www.themealdb.com/images/media/meals/a15wsa1614349126.jpg',
    ),
    Recipe(
      name: 'Snert (Dutch Split Pea Soup)',
      imgUrl:
          'https://www.themealdb.com/images/media/meals/9ptx0a1565090843.jpg',
    ),
    Recipe(
      name: 'Beef Lo Mein',
      imgUrl: 'https://www.themealdb.com/images/media/meals/1529444830.jpg',
    ),
    Recipe(
      name: 'Split Pea Soup',
      imgUrl:
          'https://www.themealdb.com/images/media/meals/xxtsvx1511814083.jpg',
    ),
    Recipe(
      name: 'Sushi',
      imgUrl:
          'https://www.themealdb.com/images/media/meals/g046bb1663960946.jpg',
    ),
    Recipe(
      name: 'Corba',
      imgUrl:
          'https://www.themealdb.com/images/media/meals/58oia61564916529.jpg',
    ),
    Recipe(
      name: 'Pear Tarte Tatin',
      imgUrl:
          'https://www.themealdb.com/images/media/meals/rxvxrr1511797671.jpg',
    ),
    Recipe(
      name: 'Kidney Bean Curry',
      imgUrl:
          'https://www.themealdb.com/images/media/meals/sywrsu1511463066.jpg',
    ),
  ];
}
