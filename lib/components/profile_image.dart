import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_web_aula/utils/color_pallete.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    required this.imageUrl,
    this.visualized = false,
  }) : super(key: key);

  final String imageUrl;
  final bool visualized;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: ColorPallete.blueFacebook,
      child: CircleAvatar(
        radius: visualized ? 20 : 17,
        backgroundImage: CachedNetworkImageProvider(
          imageUrl,
        ),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
