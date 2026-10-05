import 'package:flutter_test/flutter_test.dart';

import 'package:nav_receitas_favoritas/main.dart';
import 'package:nav_receitas_favoritas/data/recipes_data.dart';
import 'package:nav_receitas_favoritas/models/recipe.dart';

void main() {
  testWidgets('Renderiza as abas Doces, Salgadas e Bebidas',
      (WidgetTester tester) async {
    await tester.pumpWidget(const ReceitasApp());

    expect(find.text('Receitas Favoritas'), findsOneWidget);
    expect(find.text('Doces'), findsOneWidget);
    expect(find.text('Salgadas'), findsOneWidget);
    expect(find.text('Bebidas'), findsOneWidget);
  });

  test('Cada categoria possui três receitas', () {
    for (final category in RecipeCategory.values) {
      expect(RecipesData.byCategory(category).length, 3);
    }
  });
}
