import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String username;
  final String profilePic;
  final String imageUrl;
  final String caption;

  const PostCard({
    super.key,
    required this.username,
    required this.profilePic,
    required this.imageUrl,
    required this.caption,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  int likes = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(widget.profilePic)),
            title: Text(widget.username, style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(widget.imageUrl, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.caption),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {
                  setState(() {
                    likes++;
                  });
                },
              ),
              Text("$likes likes"),
            ],
          ),
        ],
      ),
    );
  }
}
