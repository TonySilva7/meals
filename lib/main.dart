import 'package:flutter/material.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/screens/tabs_screen.dart';
import 'package:meals/utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        // cores
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
        ).copyWith(secondary: Colors.amber),
        // cor de background da tela
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        // fontes
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline6: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.normal,
              ),
            ),
      ),
      // home: const CategoriesScreen(),
      routes: {
        AppRoutes.home: (context) => const TabsScreen(),
        AppRoutes.categoriesMeals: (ctx) => const CategoriesMealsScreen(),
        AppRoutes.mealDetail: (ctx) => const MealDetailScreen(),
      },
      onUnknownRoute: (configs) {
        return MaterialPageRoute(
          builder: (_) {
            return const CategoriesScreen();
          },
        );
      },
    );
  }
}
