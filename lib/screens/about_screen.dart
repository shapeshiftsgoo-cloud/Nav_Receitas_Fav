import 'package:flutter/material.dart';

/// Tela acessada pelo Drawer com informações sobre o aplicativo.
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
        backgroundColor: theme.colorScheme.primaryContainer,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: theme.colorScheme.primaryContainer,
              child: Icon(
                Icons.restaurant_menu,
                size: 40,
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Receitas Favoritas',
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text('Versão 1.0.0'),
            const SizedBox(height: 24),
            const Text(
              'Aplicativo de estudo desenvolvido em Flutter para praticar '
              'navegação por abas (Doces, Salgadas e Bebidas), navegação '
              'entre telas com cards, Drawer e retorno à aba de origem.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
