import 'package:flutter/material.dart';
import 'post_card.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ShopTok')),
      body: ListView(
        children: const [
          PostCard(
            username: "Alice",
            profilePic:
                "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
            imageUrl:
                "https://images.unsplash.com/photo-1618354691833-1e2e7a7a06a3",
            caption: "Mon nouveau produit préféré 💕",
          ),
          PostCard(
            username: "Bob",
            profilePic:
                "https://cdn-icons-png.flaticon.com/512/147/147144.png",
            imageUrl:
                "https://images.unsplash.com/photo-1582407947304-fd86f028f716",
            caption: "Super qualité et rapide 🚀",
          ),
        ],
      ),
    );
  }
}
