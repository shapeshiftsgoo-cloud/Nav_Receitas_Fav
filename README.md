# nav_receitas_favoritas

Aplicativo Flutter para gerenciar receitas favoritas, desenvolvido como
atividade de revisão de **navegação por abas** e **navegação entre telas**
com uso de **Cards**.

## Objetivo

Permitir que o usuário explore três categorias de receitas — **Doces**,
**Salgadas** e **Bebidas** — por meio de abas na parte inferior da tela,
abra os detalhes de cada receita em uma nova tela e acesse funções gerais
pelo menu lateral (Drawer).

## Funcionalidades

- **Tela principal (HomeScreen)** com `DefaultTabController`, `TabBar` e
  `TabBarView` exibindo as abas Doces, Salgadas e Bebidas na parte inferior.
- **Três receitas por categoria** (9 no total), cada uma representada por um
  `Card` reutilizável ([`RecipeCard`](lib/widgets/recipe_card.dart)).
- **Tela de detalhes** ([`RecipeDetailScreen`](lib/screens/recipe_detail_screen.dart))
  com título, descrição, lista de ingredientes e modo de preparo. O botão de
  voltar da `AppBar` retorna exatamente para a aba de origem.
- **Drawer** ([`AppDrawer`](lib/screens/app_drawer.dart)) com ícones para
  **Configurações** ([`SettingsScreen`](lib/screens/settings_screen.dart)) e
  **Sobre** ([`AboutScreen`](lib/screens/about_screen.dart)).

## Estrutura do projeto

```
lib/
├── main.dart                     # Raiz do app (MaterialApp + tema)
├── models/
│   └── recipe.dart               # Recipe + enum RecipeCategory (enhanced enum)
├── data/
│   └── recipes_data.dart         # Fonte de dados (3 receitas por categoria)
├── widgets/
│   └── recipe_card.dart          # Card reutilizável de receita
└── screens/
    ├── home_screen.dart          # Tela principal com abas + Drawer
    ├── recipe_detail_screen.dart # Detalhes da receita
    ├── app_drawer.dart           # Menu lateral
    ├── settings_screen.dart      # Configurações
    └── about_screen.dart         # Sobre
```

## Conceitos aplicados

- `MaterialApp`, `Scaffold`, `AppBar` e `Drawer`.
- `Card` + `InkWell` para itens tocáveis.
- `DefaultTabController` / `TabBar` / `TabBarView` para abas inferiores.
- `Navigator.push` / `MaterialPageRoute` para navegação imperativa.
- `ListView.builder`, `SingleChildScrollView`, `Row` e `Column`.
- `enum` aprimorado (com campos, construtor e getters).
- Modelo imutável com `const` e `final`.

## Como executar

```bash
flutter pub get
flutter run
```

## Testes

```bash
flutter test
```
