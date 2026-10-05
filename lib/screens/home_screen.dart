import 'package:flutter/material.dart';

import '../data/recipes_data.dart';
import '../models/recipe.dart';
import '../widgets/recipe_card.dart';
import 'app_drawer.dart';
import 'recipe_detail_screen.dart';

/// Tela principal: ponto de partida do app.
/// Exibe três abas (Doces, Salgadas e Bebidas) na parte inferior.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _openRecipe(BuildContext context, Recipe recipe) {
    // Navegação imperativa: empurra a tela de detalhes na pilha.
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => RecipeDetailScreen(recipe: recipe),
      ),
    );
  }

  Widget _buildCategoryList(BuildContext context, RecipeCategory category) {
    final recipes = RecipesData.byCategory(category);

    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: recipes.length,
      itemBuilder: (context, index) {
        final recipe = recipes[index];
        return RecipeCard(
          recipe: recipe,
          onTap: () => _openRecipe(context, recipe),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final categories = RecipeCategory.values;

    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Receitas Favoritas'),
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        ),
        drawer: const AppDrawer(),
        body: TabBarView(
          children: [
            for (final category in categories)
              _buildCategoryList(context, category),
          ],
        ),
        // Abas visíveis na parte inferior da tela.
        bottomNavigationBar: Material(
          color: Theme.of(context).colorScheme.surface,
          elevation: 8,
          child: SafeArea(
            child: TabBar(
              labelColor: Theme.of(context).colorScheme.primary,
              unselectedLabelColor:
                  Theme.of(context).colorScheme.onSurfaceVariant,
              indicatorColor: Theme.of(context).colorScheme.primary,
              tabs: [
                for (final category in categories)
                  Tab(
                    icon: Icon(category.icon),
                    text: category.label,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
