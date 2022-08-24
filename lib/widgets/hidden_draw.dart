import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:on_boarding/pages/home_page.dart';
import 'package:on_boarding/pages/profile_page.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  final myTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.white,
  );

  void openHiddenDrawerController() {
    print('you press open');
    //SimpleHiddenDrawerController.of(context).open();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'HomePage',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Profile',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        ProfilePage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      typeOpen: TypeOpen.FROM_RIGHT,
      backgroundColorAppBar: Colors.white,
      elevationAppBar: 0,
      backgroundColorMenu: Colors.deepPurple.shade200,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 60, // chieu rong cua drawer
      contentCornerRadius: 20, // bo goc page
      //disableAppBarDefault: true,
      withAutoTittleName: true,
      tittleAppBar: Center(
        child: Text(
          "Medical App",
          style: GoogleFonts.dancingScript(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
      ),
      leadingAppBar: Icon(
        Icons.menu_outlined,
        color: Colors.deepPurple[100],
      ),
    );
  }
}
