import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:page_transition_app/dashboard.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late PageController _pageController;

  late AnimationController rippleController;
  late AnimationController scaleController;

  late Animation<double> rippleAnimation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    rippleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    scaleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    rippleAnimation =
        Tween<double>(begin: 80.0, end: 90.0).animate(rippleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              rippleController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              rippleController.forward();
            }
          });
    scaleAnimation =
        Tween<double>(begin: 1.0, end: 30.0).animate(scaleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: Dashboard(),
                ),
              );
            }
          });

    rippleController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage("assets/images/one.jpg"),
          makePage("assets/images/two.jpg"),
          makePage("assets/images/three.jpg")
        ],
      ),
    );
  }

  Widget makePage(String image) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      )),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.3)
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Exercise 1",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "15",
                    style: TextStyle(
                        color: Colors.yellow[400],
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Minutes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "3",
                    style: TextStyle(
                        color: Colors.yellow[400],
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Exercises",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 140.0,
              ),
              const Align(
                child: Text(
                  "Start the morning with your health",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w100),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedBuilder(
                  animation: rippleAnimation,
                  builder: (context, child) => Container(
                    height: rippleAnimation.value,
                    width: rippleAnimation.value,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.withOpacity(0.4)),
                    child: InkWell(
                      onTap: () {
                        scaleController.forward();
                      },
                      child: AnimatedBuilder(
                        animation: scaleAnimation,
                        builder: (context, child) => Transform.scale(
                          scale: scaleAnimation.value,
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
