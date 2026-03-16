import 'package:flutter/material.dart';

void main() {
  runApp(CavoshApp());
}

class CavoshApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cavosh Cafe Flutter',
      theme: ThemeData(primarySwatch: Colors.brown),
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  final List<Map<String, dynamic>> screens = [
    {"name": "Login", "screen": LoginScreen()},
    {"name": "Registro", "screen": RegisterScreen()},
    {"name": "Lista de Cafés", "screen": CoffeeListScreen()},
    {"name": "Detalle de Café", "screen": CoffeeDetailScreen()},
    {"name": "Carrito", "screen": CartScreen()},
    {"name": "Historial de Pedidos", "screen": OrdersScreen()},
    {"name": "Perfil", "screen": ProfileScreen()},
    {"name": "Favoritos", "screen": FavoritesScreen()},
    {"name": "Configuración", "screen": SettingsScreen()},
    {"name": "Contacto", "screen": ContactScreen()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cavosh Café - Interfaces")),
      body: ListView.builder(
        itemCount: screens.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(screens[index]["name"]),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => screens[index]["screen"]),
              );
            },
          );
        },
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(child: Text("Pantalla de Login")),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registro")),
      body: Center(child: Text("Pantalla de Registro")),
    );
  }
}

class CoffeeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista de Cafés")),
      body: ListView(
        children: [
          ListTile(title: Text("Latte")),
          ListTile(title: Text("Cappuccino")),
          ListTile(title: Text("Espresso")),
        ],
      ),
    );
  }
}

class CoffeeDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalle del Café")),
      body: Center(child: Text("Información del café seleccionado")),
    );
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carrito")),
      body: Center(child: Text("Productos en el carrito")),
    );
  }
}

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Historial de Pedidos")),
      body: Center(child: Text("Pedidos anteriores")),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Perfil")),
      body: Center(child: Text("Perfil del usuario")),
    );
  }
}

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favoritos")),
      body: Center(child: Text("Cafés favoritos")),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Configuración")),
      body: Center(child: Text("Opciones de configuración")),
    );
  }
}

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contacto")),
      body: Center(child: Text("Información de contacto")),
    );
  }
}