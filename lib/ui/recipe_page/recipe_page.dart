import 'package:flutter/material.dart';
import 'package:rubadubdubgrub/data/recipe_data.dart';
import 'package:rubadubdubgrub/ui/recipe_page/sliding_cards.dart';

class RecipePage extends StatefulWidget{
  @override
  State<RecipePage> createState() => _RecipePageState();

}
class _RecipePageState extends State<RecipePage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 16.0,
                bottom: 16.0,
                left: 32.0,
                right: 32.0,
              ),
              child: Text(
                "Recipes",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              child: SlidingCardsView(
                info: getFavorites(),
              ),
              height: 400,
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              child: SlidingCardsView(
                info: getNew(),
              ),
              height: 400,
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              child: SlidingCardsView(
                info: getEditorChoice(),
              ),
              height: 400,
            ),
          ],
      ),
    );
  }
}