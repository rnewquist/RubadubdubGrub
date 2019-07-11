class RecipeInfo {
  final String name;
  final String imageURL;
  final List<String> steps;
  final String cooktime;
  final String description;
  final String author;
  final List<String> ingredients;
  RecipeInfo({
    this.name,
    this.imageURL,
    this.steps,
    this.cooktime,
    this.description,
    this.author,
    this.ingredients
  });
}

List<RecipeInfo> getFavorites(){
  return List<RecipeInfo>.from([item1(), item2(), item3(), item4()]);

}

RecipeInfo item1(){
  return RecipeInfo(
    name: "Cajun Chicken and Sausage Gumbo",
    imageURL: "https://images.media-allrecipes.com/userphotos/720x405/1088072.jpg",
    steps: [
      "Heat the oil in a Dutch oven over medium heat. When hot, whisk in flour. Continue whisking until the roux has cooked to the color of chocolate milk, 8 to 10 minutes. Be careful not to burn the roux. If you see black specks in the mixture, start over.",
      "Stir onion, bell pepper, celery, and sausage into the roux; cook 5 minutes. Stir in the garlic and cook another 5 minutes. Season with salt, pepper, and Creole seasoning; blend thoroughly. Pour in the chicken broth and add the bay leaf. Bring to a boil over high heat, then reduce heat to medium-low, and simmer, uncovered, for 1 hour, stirring occasionally. Stir in the chicken, and simmer 1 hour more. Skim off any foam that floats to the top during the last hour.",
    ],
    cooktime: "3h 15m",
    description:"This is a Cajun-style gumbo made with a seasoned roux, a classic from the bayous of south Louisiana. I revised the recipe after many, many trials. Serve it hot over cooked rice or with potato salad",
    author: "Jodi Hanlon",
    ingredients: [
      "1 cup vegetable oil",
      "1 cup all-purpose flour",
      "1 large onion, chopped",
      "1 large green bell pepper, chopped",
      "2 celery stalks, chopped",
      "1 pound andouille or smoked sausage, sliced 1/4 inch thick",
      "4 cloves garlic, minced",
      "salt and pepper to taste",
      "Creole seasoning to taste",
      "6 cups chicken broth",
      "1 bay leaf",
      "1 rotisserie chicken, boned and shredded",
    ],
  );
}

RecipeInfo item2(){
  return RecipeInfo(
    name: "Dessert Crepes",
    imageURL: "https://images.media-allrecipes.com/userphotos/720x405/4511555.jpg",
    steps: [
      "In large bowl, whisk together eggs, milk, melted butter, flour sugar and salt until smooth.",
      "Heat a medium-sized skillet or crepe pan over medium heat. Grease pan with a small amount of butter or oil applied with a brush or paper towel. Using a serving spoon or small ladle, spoon about 3 tablespoons crepe batter into hot pan, tilting the pan so that bottom surface is evenly coated. Cook over medium heat, 1 to 2 minutes on a side, or until golden brown. Serve immediately.",
    ],
    cooktime: "20m",
    description:"Essential crepe recipe. Sprinkle warm crepes with sugar and lemon, or serve with cream or ice cream and fruit.",
    author: "ANN57",
    ingredients: [
      "4 eggs, lightly beaten",
      "1 1/3 cups milk",
      "2 tablespoons butter, melted",
      "1 cup all-purpose flour",
      "2 tablespoons white sugar",
      "1/2 teaspoon salt",
    ],
  );
}

RecipeInfo item3(){
  return RecipeInfo(
    name: "Unbelievably Awesome Barbeque Chicken Pizza",
    imageURL: "https://images.media-allrecipes.com/userphotos/720x405/2585431.jpg",
    steps: [
      "Heat the sesame oil in a skillet over medium heat. Place the chicken breast in the skillet, and top with 1 tablespoon barbeque sauce. Cook 10 minutes, turn, and top with 1 tablespoon barbeque sauce. Continue cooking 10 minutes, until juices run clear. Cool slightly, and cut into chunks.",
      "Preheat oven to 425 degrees F (220 degrees C).",
      "In a small bowl, mix the remaining barbeque sauce and marinara sauce. Spread evenly over the pizza crust. Sprinkle with mozzarella cheese. Arrange cooked chicken chunks and red onion slices over the top.",
      "Bake 15 minutes in the preheated oven, or until cheese is melted and bubbly. Remove from heat, sprinkle with cilantro, and let sit 10 minutes before slicing.",
    ],
    cooktime: "1h",
    description: "This recipe is simple, yet delicious. The chicken is prepared in a slightly different way than usual, but comes out deliciously! My husband and his best friend beg me for this. Great with Jay's Signature Pizza Crust recipe, also on this site.",
    author: "LauraKKH",
    ingredients: [
      "1 tablespoon sesame oil",
      "1 skinless, boneless chicken breast half",
      "1/4 cup barbeque sauce, divided",
      "1/2 cup marinara sauce",
      "1 (16 ounce) package pre-baked pizza crust",
      "1 cup shredded mozzarella cheese",
      "1/3 cup thinly sliced red onion",
      "2 tablespoons chopped fresh cilantro",
    ],
  );
}

RecipeInfo item4(){
  return RecipeInfo(
    name: "Fish Tacos",
    imageURL: "https://images.media-allrecipes.com/userphotos/720x405/4557502.jpg",
    steps: [
      "To make beer batter: In a large bowl, combine flour, cornstarch, baking powder, and salt. Blend egg and beer, then quickly stir into the flour mixture (don't worry about a few lumps).",
      "To make white sauce: In a medium bowl, mix together yogurt and mayonnaise. Gradually stir in fresh lime juice until consistency is slightly runny. Season with jalapeno, capers, oregano, cumin, dill, and cayenne.",
      "Heat oil in deep-fryer to 375 degrees F (190 degrees C).",
      "Dust fish pieces lightly with flour. Dip into beer batter, and fry until crisp and golden brown. Drain on paper towels. Lightly fry tortillas; not too crisp. To serve, place fried fish in a tortilla, and top with shredded cabbage, and white sauce.",
    ],
    cooktime: "1h",
    description: "I'm from San Diego and these taste just like home! We live in the south now, and nobody has heard of these! Serve with homemade pico de gallo, and lime wedges to squeeze on top!",
    author: "BREESE823",
    ingredients: [
      "1 cup all-purpose flour",
      "2 tablespoons cornstarch",
      "1 teaspoon baking powder",
      "1/2 teaspoon salt",
      "1 egg",
      "1 cup beer",
      "1/2 cup plain yogurt",
      "1 lime, juiced",
      "1 jalapeno pepper, minced",
      "1 teaspoon minced capers",
      "1/2 teaspoon dried oregano",
      "1/2 teaspoon ground cumin",
      "1/2 teaspoon dried dill weed",
      "1 teaspoon ground cayenne pepper",
      "11 quart oil for frying",
      "1 pound cod fillets, cut into 2 to 3 ounce portions",
      "1 (12 ounce) package corn tortillas",
      "1/2 medium head cabbage, finely shredded",
    ],
  );
}