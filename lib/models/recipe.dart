import 'package:flutter/material.dart';

/// Categoria de receita. Enum "enhanced" (Dart 2.17+): cada valor
/// carrega um rótulo e um ícone próprios.
enum RecipeCategory {
  doces(label: 'Doces', icon: Icons.cake_outlined),
  salgadas(label: 'Salgadas', icon: Icons.lunch_dining_outlined),
  bebidas(label: 'Bebidas', icon: Icons.local_drink_outlined);

  const RecipeCategory({required this.label, required this.icon});

  final String label;
  final IconData icon;
}

/// Modelo imutável que representa uma receita.
class Recipe {
  const Recipe({
    required this.title,
    required this.category,
    required this.description,
    required this.ingredients,
    required this.steps,
    this.prepTimeMinutes = 30,
    this.servings = 4,
  });

  final String title;
  final RecipeCategory category;
  final String description;
  final List<String> ingredients;
  final List<String> steps;
  final int prepTimeMinutes;
  final int servings;

  /// Texto amigável do tempo de preparo.
  String get prepTimeLabel => '$prepTimeMinutes min';
}
