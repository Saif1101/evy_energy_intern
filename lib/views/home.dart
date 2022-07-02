import 'package:evy_internship/helpers/theme_colors.dart';
import 'package:evy_internship/views/history.dart';
import 'package:evy_internship/views/map.dart';
import 'package:evy_internship/views/menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  

  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int pageIndex =0;
  PageController pageController = PageController();

  onPageChanged(int pageIndex){
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  navigationOnTap(int index){
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        children: <Widget>[
          
          
          MapPage(),
          HistoryPage(), 
          MenuPage()
        ],
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: Theme.of(context).textTheme.labelMedium,
        unselectedLabelStyle: Theme.of(context).textTheme.labelMedium,
        selectedItemColor: Colors.black,
        currentIndex: pageIndex,
        backgroundColor: ThemeColors.primary80,
        
        
        type: BottomNavigationBarType.fixed,
        items: [
           BottomNavigationBarItem(
            activeIcon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), 
                color: Colors.white,
              ),
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 4),
              child: Icon(Icons.map_outlined,
                  color: Colors.black,
                  size: 25),
            ),
            label: 'Map',
            
            icon: Container(
              padding: EdgeInsets.all(4),
              child: Icon(Icons.map_outlined,
                  color: Colors.black,
                  size: 25),
            ),),
                 BottomNavigationBarItem(
            label: 'History',
            activeIcon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), 
                color: Colors.white,
              ),
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
              child: Icon(Icons.history,
                  color: Colors.black,
                  size: 25),
            ),
            icon: Icon(Icons.history_sharp,
                color: Colors.black,
                size: 25),),
                 BottomNavigationBarItem(
            label: 'Menu',
            activeIcon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), 
                color: Colors.white,
              ),
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
              child: Icon(Icons.menu,
                  color: Colors.black,
                  size: 25),
            ),
            icon: Icon(Icons.menu,
                color: Colors.black,
                size: 25),)
          
          
        ],
        onTap: (index) {
          //Handle button tap
            navigationOnTap(index);
        },
      ),
    );
  }
}