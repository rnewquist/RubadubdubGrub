import 'package:flutter/material.dart';
import 'package:rubadubdubgrub/ui/recipe_page/sliding_cards.dart';

class RecipePage extends StatefulWidget{
  @override
  State<RecipePage> createState() => _RecipePageState();

}
class _RecipePageState extends State<RecipePage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children: <Widget>[
            SizedBox(
              child: SlidingCardsView(),
              height: 400,
            ),
            SizedBox(
              height: 16,
            ),
          ],
      ),
    );
  }
}