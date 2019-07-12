import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:rubadubdubgrub/data/recipe_data.dart';
import 'package:rubadubdubgrub/ui/recipe_info_page/recipe_info_about_page.dart';
import 'package:rubadubdubgrub/ui/recipe_info_page/recipe_info_steps_page.dart';

class RecipeInfoPage extends StatefulWidget{
  RecipeInfoPage({Key key, @required this.info}) : super(key: key);
  final RecipeInfo info;
  @override
  _RecipeInfoPageState createState() => _RecipeInfoPageState();

}
class _RecipeInfoPageState extends State<RecipeInfoPage>
    with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                child: SliverSafeArea(
                  top: false,
                  sliver: SliverAppBar(
                    floating: true,
                    pinned: true,
                    snap: false,
                    primary: true,
                    expandedHeight: 200,
                    forceElevated: innerBoxIsScrolled,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Hero(
                        tag: "text_${widget.info.name}",
                        child: Material(
                          color: Colors.transparent,
                          child: Text(widget.info.name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              )
                          ),
                        ),
                      ),
                      background: Hero(
                        tag: "hero_${widget.info.imageURL}",
                        child: Image.network(
                          widget.info.imageURL,
                          fit: BoxFit.fitHeight,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Scaffold(
            appBar: TabBar(
                controller: controller,
                labelColor: Theme.of(context).accentColor,
                unselectedLabelColor: Colors.grey,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.description),
                    text: "Info",
                  ),
                  Tab(
                    icon: Icon(Icons.list),
                    text: "Steps",
                  ),
                ]
            ),
            body: TabBarView(
              controller: controller,
              children: <Widget>[
                RecipeInfoAboutPage(info: widget.info,),
                RecipeInfoStepsPage(info: widget.info,)
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2,
      vsync: this,
    );
  }
}