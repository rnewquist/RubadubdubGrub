import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:rubadubdubgrub/data/recipe_data.dart';

class RecipeInfoAboutPage extends StatefulWidget{
  final RecipeInfo info;
  RecipeInfoAboutPage({Key key,@required this.info}): super(key: key);

  @override
  _RecipeInfoAboutPageState createState() => _RecipeInfoAboutPageState();

}

class _RecipeInfoAboutPageState extends State<RecipeInfoAboutPage>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(
          top: 8.0,
          left: 16.0,
          right: 16.0,
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(widget.info.description),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          child: Text(widget.info.author[0]),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: AutoSizeText(widget.info.author, maxLines: 1,),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Hero(
                tag: "cooktime_${widget.info.name}",
                child: Material(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.access_time),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Cook Time: "),
                      Text(widget.info.cooktime),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Ingredients"),
                  Divider(),
                  Wrap(
                    spacing: 8.0, // gap between adjacent chips
                    runSpacing: 4.0, // gap between lines
                    direction: Axis.horizontal, // main axis (rows or columns)
                    children: <Widget>[
                      for(var ingredient in widget.info.ingredients) Chip(label: Text(ingredient))
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}