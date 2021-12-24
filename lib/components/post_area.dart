import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_web_aula/models/user.dart';
import 'package:flutter/material.dart';

class PostArea extends StatelessWidget {
  const PostArea({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[300],
                backgroundImage: CachedNetworkImageProvider(
                  user.urlImage,
                ),
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'No que você está pensando',
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            height: 10,
            thickness: 0.5,
          ),
          SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(primary: Colors.red),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: const Text(
                    'Ao Vivo',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const VerticalDivider(width: 8),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                  style: TextButton.styleFrom(primary: Colors.green),
                  label: const Text(
                    'Fotos',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const VerticalDivider(width: 8),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.video_call,
                    color: Colors.purple,
                  ),
                  label: const Text(
                    'Sala',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: TextButton.styleFrom(primary: Colors.purple),
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
    );
  }
}
