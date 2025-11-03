import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:kit/core/extensions/context.dart';

class FeedItem extends StatelessWidget {
  const FeedItem({super.key});

  @override
  Widget build(BuildContext context) {
    const String userText = '''
      # Title
      This is **bold** and *italic* text.
      - Item 1
      - Item 2
    ''';

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: const NetworkImage(
            'https://thumbs.dreamstime.com/b/anime-girl-wearing-sailor-uniform-having-curious-expression-long-brown-hair-red-ribbon-blue-white-her-large-expressive-394359669.jpg',
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.grey.shade300,
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Username',
                  style: context.textStyle.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                MarkdownBody(
                  data: userText,
                  selectable: true,
                  styleSheet: MarkdownStyleSheet(
                    p: const TextStyle(fontSize: 16),
                    strong: const TextStyle(fontWeight: FontWeight.bold),
                    em: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
