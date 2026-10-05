import 'package:flutter/material.dart';

/// Tela acessada pelo Drawer com configurações gerais do app.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.dark_mode_outlined),
            title: Text('Tema escuro'),
            subtitle: Text('Em breve nesta versão de estudos'),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Idioma'),
            subtitle: Text('Português (Brasil)'),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.notifications_none),
            title: Text('Notificações'),
            subtitle: Text('Receber novidades de receitas'),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
