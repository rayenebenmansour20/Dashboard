import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sidemenu extends StatefulWidget {
  const Sidemenu({super.key});

  @override
  State<Sidemenu> createState() => _SidemenuState();
}

class _SidemenuState extends State<Sidemenu> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final bool isSmallScreen = MediaQuery.of(context).size.width<600;
    return Drawer(
      backgroundColor: Colors.blue,
      // ignore: sized_box_for_whitespace
      child: Container(
        height: screenHeight,
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                child: Image.asset(
                  "./assets/images/datamasterlogo.png",
                  width: 100,
                  height: 100,
                ),
              ),
              DrawerListTile(
                title: "Dashboard", 
                svgSrc: "./assets/icons/home.svg",
                press: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                selected: _selectedIndex == 0,
                isSmallScreen: isSmallScreen,
              ),
              DrawerListTile(
                title: "Produits",
                svgSrc: "./assets/icons/product.svg",
                press: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                selected: _selectedIndex == 1,
                isSmallScreen: isSmallScreen,
              ),
              DrawerListTile(
                title: "Commandes",
                svgSrc: "./assets/icons/order.svg",
                press: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
                selected: _selectedIndex == 2,
                isSmallScreen: isSmallScreen,
              ),
              DrawerListTile(
                title: "Clients",
                svgSrc: "./assets/icons/useravatar.svg",
                press: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
                selected: _selectedIndex == 3,
                isSmallScreen: isSmallScreen,
              ),
              DrawerListTile(
                title: "Stock",
                svgSrc: "./assets/icons/icons8-box-128.svg",
                press: () {
                  setState(() {
                    _selectedIndex = 4;
                  });
                },
                selected: _selectedIndex == 4,
                isSmallScreen: isSmallScreen,
              ),
              DrawerListTile(
                title: "Historique",
                svgSrc: "./assets/icons/menu_dashbord.svg",
                press: () {
                  setState(() {
                    _selectedIndex = 5;
                  });
                },
                selected: _selectedIndex == 5,
                isSmallScreen: isSmallScreen,
              ),
              const SizedBox(height: 180),
              DrawerListTile(
                title: "Paramètres",
                svgSrc: "./assets/icons/settings.svg",
                press: () {
                  setState(() {
                    _selectedIndex = 6;
                  });
                },
                selected: _selectedIndex == 6,
                isSmallScreen: isSmallScreen,

              ),
              DrawerListTile(
                title: "Déconnexion",
                svgSrc: "./assets/icons/loginout.svg",
                press: () {
                  setState(() {
                    _selectedIndex = 7;
                  });
                },
                selected: _selectedIndex == 7,
                isSmallScreen: isSmallScreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.press,
    this.selected = false, required this.isSmallScreen,
  });
  final bool isSmallScreen;
  final String title, svgSrc;
  final VoidCallback press;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        color: selected ? Colors.white : Colors.blue,
        child: ListTile(
          horizontalTitleGap: 10.0,
          leading: SvgPicture.asset(
            svgSrc,
            // ignore: deprecated_member_use
            color: selected ? Colors.blue : Colors.white,
            height:  isSmallScreen ? 25 : 20,            
          ),
          title: Text(
            title,
            style: TextStyle(
              color: selected ? Colors.blue : Colors.white,
              fontSize: isSmallScreen ? 0 : 20,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
