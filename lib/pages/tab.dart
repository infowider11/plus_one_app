import 'package:flutter/material.dart';
import 'package:oneplus/constants/constans.dart';
import 'package:oneplus/pages/chat.dart';
import 'package:oneplus/pages/event_calender_page.dart';
import 'package:oneplus/pages/home_page.dart';
import 'package:oneplus/pages/notifications_page.dart';
import 'package:oneplus/pages/settings_page.dart';
import '../constants/colors.dart';
import '../constants/image_urls.dart';

/// This is the stateful widget that the main application instantiates.
class TabsPage extends StatefulWidget {
  static const String id="tab";
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

/// This is the private State class that goes with TabsPage.
class _TabsPageState extends State<TabsPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold
  );
  static const List<Widget> _widgetOptions = <Widget>[

   Home_Page(),
   ChatDetail(),
   Event_Calender_Page(),
   Notifications_Page(),
   Settings_Page(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            shadow
          ]
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 0,
          elevation: 0,
          unselectedFontSize:0,
          selectedLabelStyle: TextStyle(fontFamily: 'medium'),
          unselectedLabelStyle: TextStyle(fontFamily: 'medium'),
          unselectedItemColor: MyColors.textcolor,

          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(MyImages.home),
                color: MyColors.bordercolor,
                size: 24,
              ),
              activeIcon:Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColors.primaryColor
                  ),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: ImageIcon(
                  AssetImage(MyImages.home),
                   color: MyColors.primaryColor,
                  size: 24,
                ),
              ),
              // activeIcon: Icon(Icons.home, size: 30,color: themecolor,),
              // icon: Icon(Icons.home, size: 30,color: Colors.black,),
              label: '',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
                label: '',
                // activeIcon: Icon(Icons.home, size: 30,color: themecolor,),
              icon: Stack(
                children: [
                  ImageIcon(
                    AssetImage(MyImages.message),
                    color: MyColors.bordercolor,
                    size: 24,
                  ),
                ],
              ),
              activeIcon: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: MyColors.primaryColor
                    ),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: ImageIcon(
                  AssetImage(MyImages.message),
                  color: MyColors.primaryColor,
                  size: 24,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              // activeIcon: Icon(Icons.home, size: 30,color: themecolor,),
              icon: Stack(
                children: [
                  ImageIcon(
                    AssetImage(MyImages.event),
                    color: MyColors.bordercolor,
                    size: 24,
                  ),
                ],
              ),
              activeIcon: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: MyColors.primaryColor
                    ),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: ImageIcon(
                  AssetImage(MyImages.event),
                  color: MyColors.primaryColor,
                  size: 24,
                ),
              ),
            ),
            BottomNavigationBarItem(
              // icon: Icon(Icons.school, size: 30, color: Colors.black,),
              icon: ImageIcon(
                AssetImage(MyImages.notification_bottom),
                color: MyColors.bordercolor,
                size: 24,
              ),
              activeIcon: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: MyColors.primaryColor
                    ),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: ImageIcon(
                  AssetImage(MyImages.notification_bottom),
                  color: MyColors.primaryColor,
                  size: 24,
                ),
              ),
              label: '',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              // icon: Icon(Icons.school, size: 30, color: Colors.black,),
              icon: ImageIcon(
                AssetImage(MyImages.settings_line),
                color: MyColors.bordercolor,
                size: 24,
              ),
              activeIcon: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: MyColors.primaryColor
                    ),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: ImageIcon(
                  AssetImage(MyImages.settings_line),
                  color: MyColors.primaryColor,
                  size: 24,
                ),
              ),
              label: '',
              backgroundColor: Colors.white,
            ),

          ],
          currentIndex: _selectedIndex,
          selectedItemColor: MyColors.primaryColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
