import 'package:flutter/material.dart';
import 'package:rubadubdubgrub/ui/profile_page/profile_page.dart';
import 'package:rubadubdubgrub/ui/recipe_page/recipe_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  PageController _pageController;
  var _page = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(""),
      ),
      body: PageView(
        children: <Widget>[
          RecipePage(),
          ProfilePage(),
        ],
        controller: _pageController,
        physics: BouncingScrollPhysics(),
        onPageChanged: onPageChanged,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: (_page == 0) ? Icon(Icons.add) : Icon(Icons.edit),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Ink(
          height: 50.0,
          padding: EdgeInsets.symmetric(horizontal: 64),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: (){
                  navigationTapped(0);
                },
                child: Text(
                  "RECIPES",
                  style: new TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: (_page == 0) ? Colors.white : Colors.white60
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  navigationTapped(1);
                },
                child: Text(
                  "PROFILE",
                  style: new TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: (_page == 1) ? Colors.white : Colors.white60
                  ),
                ),
              )
            ],
          ),
        ),
        color: ThemeData.light().primaryColor,
      ),
    );
  }



  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  void navigationTapped(int page) {
    _pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _page);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

}
