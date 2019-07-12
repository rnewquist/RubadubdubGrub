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
  return List<RecipeInfo>.from([item1(), item2(), item3(), item4(),]);
}

List<RecipeInfo> getNew(){
  return List<RecipeInfo>.from([item5(), item6(), item7(), item8(),]);
}

List<RecipeInfo> getEditorChoice(){
  return List<RecipeInfo>.from([item9(), item10(), item11(), item12(),]);
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
    name: "Barbeque Chicken Pizza",
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

RecipeInfo item5(){
  return RecipeInfo(
    name: "Ginger-Peach Chicken Breast",
    imageURL: "https://images.media-allrecipes.com/userphotos/560x315/6813108.jpg",
    steps: [
      "Combine peach preserves, vinegar, horseradish, ginger, salt, and pepper in microwave-safe bowl. Microwave on high until preserves are melted, stirring once halfway through the cooking time, 30 to 60 seconds. Remove and cool to room temperature.",
      "Rinse chicken breasts, pat dry, and place in a resealable plastic bag. Pour cooled marinade over chicken, seal, and refrigerate for 6 to 24 hours, turning chicken occasionally.",
      "Preheat an outdoor grill for medium-high heat and lightly oil the grate.",
      "Place chicken on preheated grill over indirect heat, cover, and grill until chicken is browned and cooked through, about 30 minutes.",
    ],
    cooktime: "6h 35m",
    description: "Ginger and peach form a great flavor combination. Especially here, where the ginger and peach flavors are enhanced by the element of smoke flavoring on the grill.",
    author: "mkinshella",
    ingredients: [
      "1/2 cup peach preserves",
      "1 tablespoon white wine vinegar",
      "1 tablespoon prepared horseradish",
      "1 tablespoon finely grated ginger root",
      "1/2 teaspoon salt",
      "1/2 teaspoon coarsely ground black pepper",
      "4 chicken breasts",
    ],
  );
}

RecipeInfo item6(){
  return RecipeInfo(
    name: "Key West Chicken",
    imageURL: "https://images.media-allrecipes.com/userphotos/720x405/694150.jpg",
    steps: [
      "In a shallow container, blend soy sauce, honey, vegetable oil, lime juice, and garlic. Place chicken breast halves into the mixture, and turn to coat. Cover, and marinate in the refrigerator at least 30 minutes.",
      "Preheat an outdoor grill for high heat.",
      "Lightly oil the grill grate. Discard marinade, and grill chicken 6 to 8 minutes on each side, until juices run clear.",
    ],
    cooktime: "1h",
    description: "This recipe from the Florida Keys has been given to almost everyone I know. It is the best marinade for chicken, and it only takes 30 minutes from prep till you can grill! It's a great blend of flavors with honey, soy sauce, and lime juice. If you have time, try marinating overnight for the fullest flavor.",
    author: "TINA B",
    ingredients: [
      "3 tablespoons soy sauce",
      "1 tablespoon honey",
      "1 tablespoon vegetable oil",
      "1 teaspoon lime juice",
      "1 teaspoon chopped garlic",
      "4 skinless, boneless chicken breast halves",
    ],
  );
}

RecipeInfo item7(){
  return RecipeInfo(
    name: "Fruit Salsa and Cinnamon Chips",
    imageURL: "https://images.media-allrecipes.com/userphotos/720x405/4536841.jpg",
    steps: [
      "In a large bowl, thoroughly mix kiwis, Golden Delicious apples, raspberries, strawberries, white sugar, brown sugar and fruit preserves. Cover and chill in the refrigerator at least 15 minutes.",
      "Preheat oven to 350 degrees F (175 degrees C).",
      "Coat one side of each flour tortilla with butter flavored cooking spray. Cut into wedges and arrange in a single layer on a large baking sheet. Sprinkle wedges with desired amount of cinnamon sugar. Spray again with cooking spray.",
      "Bake in the preheated oven 8 to 10 minutes. Repeat with any remaining tortilla wedges. Allow to cool approximately 15 minutes. Serve with chilled fruit mixture.",
    ],
    cooktime: "45m",
    description: "Easy to make, tasty fruit salsa and cinnamon tortilla chips. Great as an appetizer or a snack. Great for anytime!",
    author: "Ann Page",
    ingredients: [
      "2 kiwis, peeled and diced",
      "2 Golden Delicious apples - peeled, cored and diced",
      "8 ounces raspberries",
      "1 pound strawberries",
      "2 tablespoons white sugar",
      "1 tablespoon brown sugar",
      "3 tablespoons fruit preserves, any flavor",
      "10 (10 inch) flour tortillas",
      "butter flavored cooking spray",
      "2 tablespoons cinnamon sugar",
    ],
  );
}

RecipeInfo item8(){
  return RecipeInfo(
    name: "Good Old Fashioned Pancakes",
    imageURL: "https://images.media-allrecipes.com/userphotos/720x405/4948036.jpg",
    steps: [
      "In a large bowl, sift together the flour, baking powder, salt and sugar. Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.",
      "Heat a lightly oiled griddle or frying pan over medium high heat. Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.",
    ],
    cooktime: "20m",
    description: "This is a great recipe that I found in my Grandma's recipe book. Judging from the weathered look of this recipe card, this was a family favorite.",
    author: "dakota kelly",
    ingredients: [
      "1 1/2 cups all-purpose flour",
      "3 1/2 teaspoons baking powder",
      "1 teaspoon salt",
      "1 tablespoon white sugar",
      "1 1/4 cups milk",
      "1 egg",
      "3 tablespoons butter, melted",
    ],
  );
}

RecipeInfo item9(){
  return RecipeInfo(
    name: "Dessert Pizza",
    imageURL: "https://images.media-allrecipes.com/userphotos/720x405/4571600.jpg",
    steps: [
      "Preheat oven to 350 degrees F (175 degrees C).",
      "Press cookie dough evenly into a 12 inch pizza pan. Bake in preheated oven for 15 to 20 minutes, until golden brown. Cool in pan on wire rack.",
      "Spread whipped topping over cooled crust. Arrange fruit in a decorative pattern. Refrigerate until ready to serve.",
    ],
    cooktime: "30m",
    description: "Refreshing sliced fruit and creamy whipped topping over a tender cookie crust - delicious, impressive, and easy. Enjoy! Kiwi and peaches may also be added to pizza if desired.",
    author: "Michele O'Sullivan",
    ingredients: [
      "1 (18 ounce) package refrigerated sugar cookie dough",
      "1 (8 ounce) container frozen whipped topping, thawed",
      "1/2 cup sliced banana",
      "1/2 cup sliced fresh strawberries",
      "1/2 cup crushed pineapple, drained",
      "1/2 cup seedless grapes, halved",
    ],
  );
}

RecipeInfo item10(){
  return RecipeInfo(
    name: "Egg Salad",
    imageURL: "https://images.media-allrecipes.com/userphotos/720x405/191517.jpg",
    steps: [
      "Place egg in a saucepan and cover with cold water. Bring water to a boil and immediately remove from heat. Cover and let eggs stand in hot water for 10 to 12 minutes. Remove from hot water, cool, peel and chop.",
      "Place the chopped eggs in a bowl, and stir in the mayonnaise, mustard and green onion. Season with salt, pepper and paprika. Stir and serve on your favorite bread or crackers.",
    ],
    cooktime: "35m",
    description: "This is a wonderful-tasting egg salad sandwich that you will definitely devour. It's really good on rye.",
    author: "wifeyluvs2cook",
    ingredients: [
      "8 eggs",
      "1/2 cup mayonnaise",
      "1 teaspoon prepared yellow mustard",
      "1/4 cup chopped green onion",
      "salt and pepper to taste",
      "1/4 teaspoon paprika",
    ],
  );
}

RecipeInfo item11(){
  return RecipeInfo(
    name: "Spanish Rice Bake",
    imageURL: "https://images.media-allrecipes.com/userphotos/720x405/2471.jpg",
    steps: [
      "Preheat oven to 375 degrees F (190 degrees C).",
      "Brown the ground beef in a large skillet over medium-high heat. Drain excess fat and transfer beef to a large pot over medium low heat.. Stir in the onion, green bell pepper, tomatoes, water, rice, chile sauce, salt, brown sugar, cumin, Worcestershire sauce and ground black pepper.",
      "Let this simmer for about 30 minutes, stirring occasionally, then transport this to a 2-quart casserole dish. Press down firmly and sprinkle with the shredded Cheddar cheese.",
      "Bake at 375 degrees F (190 degrees C) for 10 to 15 minutes, or until cheese is melted and bubbly. Garnish with chopped fresh cilantro.",
    ],
    cooktime: "1h",
    description: "Ground beef, fresh onion, green bell pepper, tomatoes and rice are simmered in a sweet-hot sauce of chile, brown sugar, cumin and Worcestershire. This savory rice dish is then baked with Cheddar and garnished with fresh cilantro.",
    author: "MELODIE",
    ingredients: [
      "1 pound lean ground beef",
      "1/2 cup finely chopped onion",
      "1/4 cup chopped green bell pepper",
      "1 (14.5 ounce) can canned tomatoes",
      "1 cup water",
      "3/4 cup uncooked long grain rice",
      "1/2 cup chile sauce",
      "1 teaspoon salt",
      "1 teaspoon brown sugar",
      "1/2 teaspoon ground cumin",
      "1/2 teaspoon Worcestershire sauce",
      "1 pinch ground black pepper",
      "1/2 cup shredded Cheddar cheese",
      "2 tablespoons chopped fresh cilantro",
    ],
  );
}

RecipeInfo item12(){
  return RecipeInfo(
    name: "Churros",
    imageURL: "https://images.media-allrecipes.com/userphotos/720x405/392145.jpg",
    steps: [
      "In a small saucepan over medium heat, combine water, 2 1/2 tablespoons sugar, salt and 2 tablespoons vegetable oil. Bring to a boil and remove from heat. Stir in flour until mixture forms a ball.",
      "Heat oil for frying in deep-fryer or deep skillet to 375 degrees F (190 degrees C). Pipe strips of dough into hot oil using a pastry bag. Fry until golden; drain on paper towels.",
      "Combine 1/2 cup sugar and cinnamon. Roll drained churros in cinnamon and sugar mixture.",
    ],
    cooktime: "20m",
    description: "These Mexican fritters are very common at fairs. In my border hometown, the line at this stand is always overwhelming. People wait hours in line just to get a taste of these churros. I have run across several recipes but this is the best one by far.",
    author: "Delia",
    ingredients: [
      "1 cup water",
      "2 1/2 tablespoons white sugar",
      "1/2 teaspoon salt",
      "2 tablespoons vegetable oil",
      "1 cup all-purpose flour",
      "2 quarts oil for frying",
      "1/2 cup white sugar, or to taste",
      "1 teaspoon ground cinnamon",
    ],
  );
}

RecipeInfo example(){
  return RecipeInfo(
    name: "",
    imageURL: "",
    steps: [
      "",
      "",
    ],
    cooktime: "",
    description: "",
    author: "",
    ingredients: [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ],
  );
}