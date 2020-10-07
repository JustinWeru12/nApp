import 'package:flutter/material.dart';
import 'package:napp/constants/theme.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TrackSleep extends StatefulWidget {
  @override
  _TrackSleepState createState() => _TrackSleepState();
}

class _TrackSleepState extends State<TrackSleep> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: size.width,
            height: size.height * 0.4,
            child: Image.asset(
              "assets/images/1.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  kPrimaryColor,
                  kSecondaryColor,
                  kTertiaryColor
                ],
              ),
            ),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.3,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Track Your Sleep".toUpperCase(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: kBackgroundColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 25),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Everything from the colors we use, to the style of voices and background effects have been carefully selected to help ensure you drft off quickly and easily",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: kTextColor, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: size.width,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        RecomendCard(
                          image: "assets/images/graph.png",
                          title: "Today",
                          text:
                              "At night, your body cycles through different Sleep Stages.\n It ussually moves from light sleep back to light, then into REM, though sleep cycles vary naturally.",
                        ),
                        RecomendCard(
                          image: "assets/images/graph.png",
                          title: "Yesterday",
                          text:
                              "At night, your body cycles through different Sleep Stages.\n It ussually moves from light sleep back to light, then into REM, though sleep cycles vary naturally.",
                        ),
                      ],
                    ),
                  ),
                  MusicCard(
                      image: "assets/images/bg.jpg",
                      text: "A Space Odessy - Justin Weru")
                ]),
          ),
        ),
      ]),
    );
  }
}

class RecomendCard extends StatelessWidget {
  const RecomendCard({Key key, this.image, this.title, this.text, this.press})
      : super(key: key);

  final String image, title, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        width: size.width * 0.8,
        child: Container(
          padding: EdgeInsets.only(bottom: 38),
          width: size.width * 0.8,
          height: size.width * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFF3fc5f0),
                    Color(0xFF42dee1),
                    Color(0xFF6decb9),
                  ])),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "$title".toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 22),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    child: Image.asset(
                      image,
                      width: size.width * 0.8,
                      height: size.width * 0.6,
                      fit: BoxFit.fill,
                    )),
              ),
              Text(
                "$text",
                textAlign: TextAlign.center,
                style: TextStyle(color: kSecondaryColor, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MusicCard extends StatelessWidget {
  const MusicCard({
    Key key,
    this.image,
    this.text,
    this.press,
  }) : super(key: key);
  final String image, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding / 2,
            ),
            width: size.width * 0.88,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding / 2,
            ),
            width: size.width * 0.88,
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.7),
                      Colors.black
                    ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kBackgroundColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LinearPercentIndicator(
                      width: size.width * 0.83,
                      lineHeight: 5.0,
                      percent: 0.6,
                      progressColor: kBackgroundColor,
                    ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.skip_previous,
                          size: 35,
                        ),
                        color: kBackgroundColor,
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.fast_rewind,
                          size: 35,
                        ),
                        color: kBackgroundColor,
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.pause,
                          size: 35,
                        ),
                        color: kBackgroundColor,
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.fast_forward,
                          size: 35,
                        ),
                        color: kBackgroundColor,
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.skip_next,
                          size: 35,
                        ),
                        color: kBackgroundColor,
                        onPressed: (){},
                      ),
                    ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
