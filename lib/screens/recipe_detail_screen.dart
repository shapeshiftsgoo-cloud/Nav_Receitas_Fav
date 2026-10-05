import 'package:flutter/material.dart';

import '../models/recipe.dart';

/// Tela de detalhes de uma receita.
/// A AppBar exibe a seta de voltar automaticamente, retornando à aba de origem.
class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({super.key, required this.recipe});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
        backgroundColor: theme.colorScheme.primaryContainer,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recipe.category.label,
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              recipe.title,
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.schedule, size: 18),
                const SizedBox(width: 4),
                Text(recipe.prepTimeLabel),
                const SizedBox(width: 20),
                const Icon(Icons.people_outline, size: 18),
                const SizedBox(width: 4),
                Text('${recipe.servings} porções'),
              ],
            ),
            const Divider(height: 32),

            Text('Descrição', style: theme.textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(recipe.description, style: theme.textTheme.bodyLarge),
            const SizedBox(height: 24),

            Text('Ingredientes', style: theme.textTheme.titleMedium),
            const SizedBox(height: 8),
            ...recipe.ingredients.map(
              (item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.check_circle_outline, size: 18),
                    const SizedBox(width: 8),
                    Expanded(child: Text(item)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            Text('Modo de preparo', style: theme.textTheme.titleMedium),
            const SizedBox(height: 8),
            ...recipe.steps.asMap().entries.map(
                  (entry) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: theme.colorScheme.primaryContainer,
                          child: Text(
                            '${entry.key + 1}',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(child: Text(entry.value)),
                      ],
                    ),
                  ),
                ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
