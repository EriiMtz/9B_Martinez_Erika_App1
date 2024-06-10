import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Barbería Social Posts',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const SocialFeedPage(),
    );
  }
}

class SocialFeedPage extends StatelessWidget {
  const SocialFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FACEBOOK'),
        centerTitle: false,
      ),
      body: ListView(
        children: const <Widget>[
          SocialPost(
            avatarInitial: 'E',
            name: 'Erii Martinez',
            description:
                'Las Siete Maravillas del Mundo Moderno son un conjunto de estructuras y monumentos emblemáticos que destacan por su grandeza arquitectónica, su importancia histórica y su impacto cultural en la humanidad',
            imageUrl:
                'https://image.isu.pub/170413014108-f010630a66c15b2ee06c0d550b6eea6e/jpg/page_1.jpg', // URL de la imagen
          ),
          SocialPost(
            avatarInitial: 'J',
            name: 'Jennit Camacho',
            description:
                'El maquillaje es una forma de arte que permite realzar la belleza natural, expresarse creativamente y transformar la apariencia. A lo largo de la historia, ha sido una herramienta esencial en la moda, el cine, la fotografía y la vida cotidiana.',
            imageUrl:
                'https://static1.mujerhoy.com/www/multimedia/202309/04/media/cortadas/matcha-latte-makeup-paso-a-paso-ktD-U21073632156XMF-624x624@MujerHoy.jpg', // URL de la imagen
          ),
          SocialPost(
            avatarInitial: 'M',
            name: 'Monserrath García',
            description:
                'La ciencia es un sistema de conocimiento y un proceso metodológico que busca entender y explicar los fenómenos naturales y el universo a través de la observación, la experimentación y el razonamiento lógico.',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPYqiEhymulTm3pHXCaWoq_s4gmxmcLqsoVg&s', // URL de la imagen
          ),
        ],
      ),
    );
  }
}

class SocialPost extends StatelessWidget {
  final String avatarInitial;
  final String name;
  final String description;
  final String imageUrl;

  const SocialPost({
    super.key,
    required this.avatarInitial,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Text(
                    avatarInitial,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(description),
            const SizedBox(height: 10),
            Image.network(
                imageUrl), // Usa Image.network para la imagen desde un enlace
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // Cambia el icono de "Me gusta" a un corazón
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                  label: const Text('Me gusta'),
                ),
                // Cambia el icono de "Comentar" a un icono de burbuja de chat
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.chat_bubble_outline),
                  label: const Text('Comentar'),
                ),
                // Cambia el icono de "Compartir" a un icono de enlace
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.link),
                  label: const Text('Compartir'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
