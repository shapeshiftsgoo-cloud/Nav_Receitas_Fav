import 'package:flutter/material.dart';

import 'about_screen.dart';
import 'settings_screen.dart';

/// Menu lateral (Drawer) com funções gerais do aplicativo.
/// Não serve para navegar entre receitas, e sim para telas de apoio.
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  void _goTo(BuildContext context, Widget screen) {
    // Fecha o Drawer e, em seguida, empurra a nova tela na pilha.
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.restaurant_menu, color: Colors.white, size: 40),
                SizedBox(height: 8),
                Text(
                  'Receitas Favoritas',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configurações'),
            onTap: () => _goTo(context, const SettingsScreen()),
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Sobre'),
            onTap: () => _goTo(context, const AboutScreen()),
          ),
        ],
      ),
    );
  }
}
