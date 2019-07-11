import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math' as math;

class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  PageController pageController;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
    pageController.addListener(() {
      setState(() => pageOffset = pageController.page);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: <Widget>[
        SlidingCard(
          name: 'Cajun Chicken and Sausage Gumbo',
          date: '4.20-30',
          assetName: 'https://images.media-allrecipes.com/userphotos/720x405/1088072.jpg',
          offset: pageOffset,
        ),
        SlidingCard(
          name: 'Dessert Crepes',
          date: '4.28-31',
          assetName: 'https://images.media-allrecipes.com/userphotos/720x405/4511555.jpg',
          offset: pageOffset - 1,
        ),
        SlidingCard(
          name: 'Unbelievably Awesome Barbeque Chicken Pizza',
          date: '4.28-31',
          assetName: 'https://images.media-allrecipes.com/userphotos/720x405/2585431.jpg',
          offset: pageOffset - 2,
        ),
        SlidingCard(
          name: 'Fish Tacos',
          date: '4.28-31',
          assetName: 'https://images.media-allrecipes.com/userphotos/720x405/4557502.jpg',
          offset: pageOffset - 3,
        ),
      ],
    );
  }
}

class SlidingCard extends StatelessWidget {
  final String name;
  final String date;
  final String assetName;
  final double offset;

  const SlidingCard({
    Key key,
    @required this.name,
    @required this.date,
    @required this.assetName,
    @required this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    return Transform.translate(
      offset: Offset(-32 * gauss * offset.sign, 0),
      child: Card(
        margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ShaderMask(
                      shaderCallback: (rect) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.transparent],
                        ).createShader(Rect.fromLTRB(0, rect.height/1.75, rect.width, rect.height));
                      },
                      blendMode: BlendMode.dstIn,
                      child: AspectRatio(
                        aspectRatio: 10/9,
                        child: Image.network(
                          '$assetName',
                          alignment: Alignment(-offset.abs(), 0),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                padding: EdgeInsets.only(bottom: 16, left: 16, right: 96),
                alignment: FractionalOffset.bottomLeft,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/7,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "$name",
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.access_time),
                          SizedBox(
                            width: 8,
                          ),
                          Text("Cook Time: "),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
