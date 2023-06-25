import 'package:flutter/material.dart';

void main() {
  runApp(MenuApp());
}

class MenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu do Restaurante',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          title: Text('Bella_Roma'),
          centerTitle: true,
        ),
      ),
      body: ListView(
        children: [
          MenuItem(
            name: 'Hambúrguer',
            description: 'Um delicioso hambúrguer com queijo e bacon',
            price: 9.99,
            image: 'imagens/hamburger.jpg',
          ),
          MenuItem(
            name: 'Pizza',
            description: 'Uma pizza com molho de tomate e queijo derretido',
            price: 27.99,
            image: 'imagens/pizza.jpg',
          ),
          MenuItem(
            name: 'Massa',
            description:
                '500g de macarrão espaguete, ninho ou parafuso -Queijo parmesão ralado',
            price: 25.99,
            image: 'imagens/Massa.jpg',
          ),
          MenuItem(
            name: 'Ravioli',
            description: 'Ricota',
            price: 30.00,
            image: 'imagens/raviole.jpg',
          ),
          MenuItem(
            name: 'Conchiglioni',
            description: 'Ricota e Nozes',
            price: 40.00,
            image: 'imagens/Conchiglioni.jpg',
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String name;
  final String description;
  final double price;
  final String image;

  const MenuItem({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        image,
        width: 80,
        height: 80,
        fit: BoxFit.cover,
      ),
      title: Text(name),
      subtitle: Text(description),
      trailing: Text(
        'R\$ ${price.toStringAsFixed(2)}',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
