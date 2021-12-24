import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_web_aula/models/models.dart';
import 'package:facebook_web_aula/utils/color_pallete.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          //CABEÇALHO
          HeadPost(post: post),

          //IMAGEM
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: CachedNetworkImage(
                imageUrl: post.urlImage,
              ),
            ),
          ),

          //INTERAÇÕES
          Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 22,
                        width: 22,
                        decoration: const BoxDecoration(
                          color: ColorPallete.blueFacebook,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.thumb_up_rounded,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(post.likes.toString()),
                      Expanded(child: Container()),
                      Text('${post.comments} comentários'),
                      const SizedBox(width: 10),
                      Text('${post.shares} compartilhamentos')
                    ],
                  ),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InteractionButton(
                      icon: Icons.thumb_up_alt_rounded,
                      label: 'Curtir',
                      onPressed: () {},
                    ),
                    const VerticalDivider(width: 8),
                    InteractionButton(
                      icon: Icons.comment_rounded,
                      label: 'Comentários',
                      onPressed: () {},
                    ),
                    const VerticalDivider(width: 8),
                    InteractionButton(
                      icon: Icons.reply_rounded,
                      onPressed: () {},
                      label: 'Compartilhar',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeadPost extends StatelessWidget {
  const HeadPost({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
              post.user.urlImage,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.nome,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    post.time,
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  const Text(
                    ' - ',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  const Icon(
                    Icons.public,
                    color: Colors.black54,
                    size: 15,
                  ),
                ],
              )
            ],
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }
}

class InteractionArea extends StatelessWidget {
  const InteractionArea({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class InteractionButton extends StatelessWidget {
  const InteractionButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  final String label;
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        primary: Colors.black54,
      ),
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(
        label,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
