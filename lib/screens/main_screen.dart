import 'package:facebook_web_aula/components/navigation_tabs.dart';
import 'package:facebook_web_aula/components/navigation_tabs_desktop.dart';
import 'package:facebook_web_aula/data/dados.dart';
import 'package:facebook_web_aula/screens/home_page.dart';
import 'package:facebook_web_aula/utils/responsivo.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<IconData> _icons = [
    Icons.home_rounded,
    Icons.video_collection,
    Icons.store_mall_directory,
    Icons.keyboard_capslock,
    Icons.menu,
  ];

  final List<Widget> _screens = [
    HomePage(),
    Scaffold(backgroundColor: Colors.red),
    Scaffold(backgroundColor: Colors.orange),
    Scaffold(backgroundColor: Colors.purple),
    Scaffold(backgroundColor: Colors.grey),
  ];

  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsivo.isDesktop(context);
    Size tamanho = MediaQuery.of(context).size;

    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        appBar: isDesktop
            ? PreferredSize(
                child: NavigationBarDesktop(
                  user: atualUser,
                  selectedPageIndex: _selectedPageIndex,
                  onTap: (index) {
                    setState(() {
                      _selectedPageIndex = index;
                    });
                  },
                  icons: _icons,
                ),
                preferredSize: Size(tamanho.width, 100),
              )
            : null,
        body: TabBarView(
          physics:
              const NeverScrollableScrollPhysics(), //não permite arrastar abas
          children: _screens,
        ),
        bottomNavigationBar: isDesktop
            ? null
            : NavigationTabs(
                selectedPageIndex: _selectedPageIndex,
                onTap: (index) {
                  setState(() {
                    _selectedPageIndex = index;
                  });
                },
                icons: _icons,
              ),
      ),
    );
  }
}
