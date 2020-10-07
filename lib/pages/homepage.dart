import 'package:flutter/material.dart';
import 'package:napp/constants/theme.dart';
import 'package:napp/pages/track.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                height: size.height * 0.3,
              ),
              Container(
                height: size.height * 0.23,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    FeatureCard(
                      image: "assets/images/2440.jpg",
                      text:
                          "“Your future depends on your dreams, so go to sleep.” \n– Mesut Barazany",
                    ),
                    FeatureCard(
                      image: "assets/images/bg.jpg",
                      text:
                          "“If you want a head start on tomorrow, eat breakfast tonight – that way you can sleep until lunchtime.” \n– Anonymous",
                    ),
                    FeatureCard(
                      image: "assets/images/moon.jpg",
                      text:
                          "When you lie down, you will not be afraid. Your sleep will be sweet.”\n – Proverbs 3:24",
                    ),
                    FeatureCard(
                      image: "assets/images/2440.jpg",
                      text:
                          "“Each night, when I go to sleep, I die. And the next morning, when I wake up, I’m reborn.” \n– Gandhi",
                    ),
                  ],
                ),
              ),
              Container(
                height: size.width * 0.85,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    RecomendCard(
                      image: "assets/images/2440.jpg",
                      title: "Sleep better\nwake happier",
                      text:
                          "Explore Sleep Sounds, Stories and Meditations, to help you sleep better and wake up happier",
                      icon: Icons.play_arrow,
                    ),
                    RecomendCard(
                        image: "assets/images/bg.jpg",
                        title: "Track your\nprogress",
                        text:
                            "Just 5 days of nApp can help you sleep an average of 32 minutes longer each night",
                        icon: Icons.show_chart,
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrackSleep()));
                        }),
                    RecomendCard(
                      image: "assets/images/moon.jpg",
                      title: "Join over\n 5 million",
                      text:
                          "Connect with over 5 Million people around the world improving their health & Happiness with nApp",
                      icon: Icons.person_add,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}

class RecomendCard extends StatelessWidget {
  const RecomendCard(
      {Key key, this.image, this.title, this.text, this.press, this.icon})
      : super(key: key);

  final String image, title, text;
  final Function press;
  final IconData icon;

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
        width: size.width * 0.4,
        child: Stack(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  image,
                  width: size.width * 0.4,
                  height: size.width * 0.7,
                  fit: BoxFit.cover,
                )),
            Container(
              padding: EdgeInsets.only(bottom: 38),
              width: size.width * 0.4,
              height: size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                    Colors.black
                  ],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "$title\n".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kBackgroundColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  ),
                  Text(
                    "$text",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kTextColor, fontSize: 18),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment(0, 1.1),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(
                    icon,
                    size: 35,
                  ),
                  color: kPrimaryColor,
                  onPressed: press,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  const FeatureCard({
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
            width: size.width * 0.8,
            height: 185,
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
            width: size.width * 0.8,
            height: 185,
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
              mainAxisAlignment: MainAxisAlignment.end,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
