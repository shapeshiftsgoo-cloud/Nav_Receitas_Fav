import '../models/recipe.dart';

/// Fonte de dados estática do app: 3 receitas por categoria.
class RecipesData {
  RecipesData._();

  static const List<Recipe> all = [
    // ------------------------- DOCES -------------------------
    Recipe(
      title: 'Bolo de Chocolate',
      category: RecipeCategory.doces,
      description:
          'Um bolo fofinho e úmido de chocolate, ideal para o café da tarde.',
      prepTimeMinutes: 50,
      servings: 10,
      ingredients: [
        '3 ovos',
        '2 xícaras de farinha de trigo',
        '2 xícaras de açúcar',
        '1 xícara de chocolate em pó',
        '1 xícara de óleo',
        '1 xícara de água quente',
        '1 colher (sopa) de fermento em pó',
      ],
      steps: [
        'Bata os ovos, o açúcar, o óleo e o chocolate em pó no liquidificador.',
        'Transfira para uma tigela e misture a farinha peneirada.',
        'Acrescente a água quente e, por último, o fermento.',
        'Asse em forno pré-aquecido a 180 °C por cerca de 40 minutos.',
      ],
    ),
    Recipe(
      title: 'Brigadeiro Gourmet',
      category: RecipeCategory.doces,
      description:
          'O clássico doce brasileiro em versão cremosa e intensa.',
      prepTimeMinutes: 25,
      servings: 20,
      ingredients: [
        '1 lata de leite condensado',
        '4 colheres (sopa) de chocolate em pó',
        '1 colher (sopa) de manteiga',
        '1 caixinha de creme de leite',
        'Chocolate granulado a gosto',
      ],
      steps: [
        'Misture o leite condensado, o chocolate e a manteiga na panela.',
        'Cozinhe em fogo baixo mexendo até desgrudar do fundo.',
        'Adicione o creme de leite e cozinhe por mais 1 minuto.',
        'Deixe esfriar, unte as mãos e enrole os brigadeiros.',
      ],
    ),
    Recipe(
      title: 'Torta de Limão',
      category: RecipeCategory.doces,
      description:
          'Torta refrescante com massa crocante e recheio cremoso de limão.',
      prepTimeMinutes: 60,
      servings: 8,
      ingredients: [
        '200 g de biscoito maisena',
        '100 g de manteiga derretida',
        '1 lata de leite condensado',
        '3 limões (suco)',
        '1 caixinha de creme de leite',
        'Claras em neve para o merengue',
      ],
      steps: [
        'Triture o biscoito e misture com a manteiga formando a massa.',
        'Forre o fundo da forma e leve à geladeira por 20 minutos.',
        'Bata o leite condensado, o suco de limão e o creme de leite.',
        'Despeje sobre a massa e cubra com o merengue.',
      ],
    ),

    // ------------------------ SALGADAS -----------------------
    Recipe(
      title: 'Lasanha à Bolonhesa',
      category: RecipeCategory.salgadas,
      description:
          'Camadas de massa intercaladas com molho bolonhesa e queijo.',
      prepTimeMinutes: 70,
      servings: 6,
      ingredients: [
        '500 g de massa para lasanha',
        '500 g de carne moída',
        '1 cebola picada',
        '2 dentes de alho',
        '500 ml de molho de tomate',
        '300 g de queijo mussarela',
        'Queijo parmesão ralado',
      ],
      steps: [
        'Refogue a cebola e o alho, junte a carne e doure bem.',
        'Adicione o molho de tomate e cozinhe por 15 minutos.',
        'Monte camadas de massa, molho e queijo.',
        'Asse a 200 °C por 30 minutos até gratinar.',
      ],
    ),
    Recipe(
      title: 'Coxinha de Frango',
      category: RecipeCategory.salgadas,
      description:
          'Salgado crocante por fora e recheado com frango cremoso.',
      prepTimeMinutes: 90,
      servings: 15,
      ingredients: [
        '500 g de peito de frango cozido e desfiado',
        '2 copos de água do cozimento',
        '2 copos de farinha de trigo',
        '1 cebola picada',
        'Cheiro-verde a gosto',
        'Farinha de rosca para empanar',
      ],
      steps: [
        'Refogue o frango desfiado com a cebola e o cheiro-verde.',
        'Ferva a água e adicione a farinha de uma vez, mexendo.',
        'Sove a massa, abra e recheie no formato de coxinha.',
        'Empane, passe no ovo e na farinha de rosca e frite.',
      ],
    ),
    Recipe(
      title: 'Escondidinho de Carne',
      category: RecipeCategory.salgadas,
      description:
          'Purê de mandioca cremoso com carne seca desfiada.',
      prepTimeMinutes: 80,
      servings: 5,
      ingredients: [
        '1 kg de mandioca cozida',
        '500 g de carne seca desfiada',
        '3 colheres de manteiga',
        '1 xícara de leite',
        'Queijo mussarela a gosto',
        'Cebola e alho a gosto',
      ],
      steps: [
        'Amasse a mandioca com o leite e a manteiga formando o purê.',
        'Refogue a carne seca com cebola e alho.',
        'Em um refratário, alterne carne e purê.',
        'Cubra com queijo e gratine a 200 °C por 20 minutos.',
      ],
    ),

    // ------------------------ BEBIDAS ------------------------
    Recipe(
      title: 'Suco de Laranja com Cenoura',
      category: RecipeCategory.bebidas,
      description:
          'Bebida nutritiva e refrescante, perfeita para o café da manhã.',
      prepTimeMinutes: 10,
      servings: 2,
      ingredients: [
        '3 laranjas',
        '1 cenoura média',
        '300 ml de água gelada',
        'Açúcar ou mel a gosto',
        'Gelo a gosto',
      ],
      steps: [
        'Descasque as laranjas e corte a cenoura em rodelas.',
        'Bata tudo no liquidificador com a água.',
        'Coe se desejar e adoce a gosto.',
        'Sirva bem gelado com gelo.',
      ],
    ),
    Recipe(
      title: 'Limonada Suíça',
      category: RecipeCategory.bebidas,
      description:
          'Limonada cremosa com leite condensado e muito gelo.',
      prepTimeMinutes: 10,
      servings: 3,
      ingredients: [
        '2 limões taiti',
        '1 litro de água bem gelada',
        '3 colheres (sopa) de leite condensado',
        'Gelo a gosto',
      ],
      steps: [
        'Bata os limões com água no liquidificador por poucos segundos.',
        'Coe a mistura para retirar o bagaço.',
        'Volte ao liquidificador com o leite condensado e o gelo.',
        'Bata e sirva imediatamente.',
      ],
    ),
    Recipe(
      title: 'Chocolate Quente Cremoso',
      category: RecipeCategory.bebidas,
      description:
          'Bebida quente e aveludada para os dias frios.',
      prepTimeMinutes: 15,
      servings: 2,
      ingredients: [
        '500 ml de leite',
        '100 g de chocolate meio amargo',
        '2 colheres (sopa) de açúcar',
        '1 colher (sopa) de amido de milho',
        'Canela em pó a gosto',
      ],
      steps: [
        'Aqueça o leite sem ferver.',
        'Derreta o chocolate e junte ao leite.',
        'Dissolva o amido e coe para ficar cremoso.',
        'Adoce, acrescente a canela e sirva quente.',
      ],
    ),
  ];

  /// Filtra as receitas por categoria.
  static List<Recipe> byCategory(RecipeCategory category) =>
      all.where((recipe) => recipe.category == category).toList();
}
