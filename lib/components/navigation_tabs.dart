import 'package:facebook_web_aula/utils/color_pallete.dart';
import 'package:flutter/material.dart';

class NavigationTabs extends StatelessWidget {
  const NavigationTabs({
    Key? key,
    required this.icons,
    required this.selectedPageIndex,
    required this.onTap,
    this.topIndicator = true,
  }) : super(key: key);

  final List<IconData> icons;
  final int selectedPageIndex;
  final Function(int) onTap;
  final bool topIndicator;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: onTap,
      // tabs: icons.map((item) {
      //   return Tab(icon: Icon(item, color: Colors.black54));
      // }).toList(),
      tabs: icons
          .asMap()
          .map(
            (index, item) {
              return MapEntry(
                index,
                Tab(
                  icon: Icon(
                    item,
                    color: index == selectedPageIndex
                        ? ColorPallete.blueFacebook
                        : Colors.black54,
                  ),
                ),
              );
            },
          )
          .values
          .toList(),
      indicator: BoxDecoration(
        border: topIndicator
            ? const Border(
                top: BorderSide(color: ColorPallete.blueFacebook, width: 3))
            : const Border(
                bottom: BorderSide(color: ColorPallete.blueFacebook, width: 3)),
      ),
    );
  }
}


///  '.map((e) => Widget())' pega cada item da lista
///   e 'transforma' cada um no que for passado no return
/// 
///   neste caso, cada item da lista retornou um Tab()
///   como a prop TABS pede um retorno de lista, foi utilizado o .toList()

/// .asMap().map() é utilizado para realzar indexação dos itens 
/// Para retornar lista, necessário utilizar .value.toList()