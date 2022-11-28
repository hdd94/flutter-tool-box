import 'package:flutter/material.dart';

class HeroScreen extends StatefulWidget {
  const HeroScreen({Key? key}) : super(key: key);

  @override
  State<HeroScreen> createState() => _HeroScreenState();
}

class _HeroScreenState extends State<HeroScreen> {
  String img = 'https://images.unsplash.com/photo-1547721064-da6cfb341d50';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Flutter is Fun!"),
        ),
        body: IconButton(
            icon: Hero(
              tag: img,
              child: Image.network(img),
            ),
            iconSize: 50,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const WallpaperScreen()));
            }));
  }
}

class WallpaperScreen extends StatefulWidget {
  const WallpaperScreen({Key? key}) : super(key: key);

  @override
  State<WallpaperScreen> createState() => _WallpaperScreenState();
}

class _WallpaperScreenState extends State<WallpaperScreen> {
  String img = 'https://images.unsplash.com/photo-1547721064-da6cfb341d50';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Flutter is Fun!"),
      ),
      body: Hero(
        tag: img,
        child: Image.network(img),
      ),
    );
  }
}
