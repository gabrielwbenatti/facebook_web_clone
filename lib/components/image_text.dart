import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_web_aula/models/models.dart';
import 'package:flutter/material.dart';

class ImageText extends StatelessWidget {
  const ImageText({
    Key? key,
    required this.user,
    required this.onTap,
  }) : super(key: key);

  final User user;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(user.urlImage),
            backgroundColor: Colors.grey[200],
          ),
          const SizedBox(width: 5),
          Flexible(
            child: Text(
              user.nome,
              style: const TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
