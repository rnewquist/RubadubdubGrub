import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:rubadubdubgrub/ui/recipe_info_page/recipe_info_steps_page.dart';

class RecipeInfoPage extends StatefulWidget{
  RecipeInfoPage({Key key, this.imageUrl, this.name}) : super(key: key);
  final String imageUrl;
  final String name;
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
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(widget.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )
                    ),
                    background: Hero(
                      tag: "hero_${widget.imageUrl}",
                      child: Image.network(
                        widget.imageUrl,
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    controller: controller,
                    tabs: [
                      Tab(icon: Icon(Icons.description), text: "About"),
                      Tab(icon: Icon(Icons.format_list_numbered), text: "Steps"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            controller: controller,
            children: <Widget>[
              Center(child: Text("Tab one")),
              RecipeInfoStepsPage(),
            ],
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

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}