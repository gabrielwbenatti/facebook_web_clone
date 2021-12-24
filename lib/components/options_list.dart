import 'package:facebook_web_aula/utils/color_pallete.dart';
import 'package:flutter/material.dart';

class OptionsList extends StatelessWidget {
  OptionsList({
    Key? key,
  }) : super(key: key);

  //List item = _options[0] = primeira lista
  // item[1] = primeira
  final List<List> _options = [
    [Icons.people_alt_rounded, ColorPallete.blueFacebook, 'Amigos'],
    [Icons.messenger_outline, Colors.red, 'Teste'],
    [Icons.flag_rounded, Colors.purple, 'Aqui'],
    [Icons.usb_rounded, Colors.green, 'KP'],
    [Icons.video_call, Colors.amber, 'Hello'],
    [Icons.circle_notifications, Colors.yellow, 'Ultimo'],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
      itemBuilder: (context, index) {
        List item = _options[index];

        return OptionItem(
          icon: item[0],
          color: item[1],
          label: item[2],
          onTap: () {},
        );
      },
      itemCount: _options.length,
      separatorBuilder: (context, index) => const SizedBox(height: 10),
    );
  }
}

class OptionItem extends StatelessWidget {
  const OptionItem({
    Key? key,
    required this.color,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: color,
              size: 30,
            ),
            const SizedBox(width: 5),
            Flexible(
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
