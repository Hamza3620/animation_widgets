import 'package:flutter/material.dart';

class HeroDemo extends StatefulWidget {
  const HeroDemo({super.key});

  @override
  State<HeroDemo> createState() => _HeroDemoState();
}

class _HeroDemoState extends State<HeroDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero")),
      body: Column(
        children: [
          ListTile(
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const FirstTile())),
            leading: const Hero(tag: 'hero-home', child: Icon(Icons.home)),
            title: const Text("FIRST TILE"),
            trailing: const Icon(Icons.forward),
          ),
          ListTile(
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SeconTile())),
            leading: const Icon(Icons.logo_dev),
            title: const Text("SECOND TILE"),
            trailing: const Hero(tag: 'second', child: Icon(Icons.forward)),
          )
        ],
      ),
    );
  }
}

class FirstTile extends StatefulWidget {
  const FirstTile({super.key});

  @override
  State<FirstTile> createState() => _FirstTileState();
}

class _FirstTileState extends State<FirstTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HOME")),
      body: const Center(
        child: Hero(
            tag: 'hero-home',
            child: Icon(
              Icons.home,
              size: 100,
            )),
      ),
    );
  }
}

class SeconTile extends StatefulWidget {
  const SeconTile({super.key});

  @override
  State<SeconTile> createState() => _SeconTileState();
}

class _SeconTileState extends State<SeconTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DEV")),
      body: const Center(
        child: Hero(
            tag: 'second',
            child: Icon(
              Icons.forward,
              size: 100,
            )),
      ),
    );
  }
}
