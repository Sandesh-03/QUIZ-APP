import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizapp/shared/bottom_nav.dart';
import 'package:quizapp/topics/topics.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double pad = 20;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                FontAwesomeIcons.circleUser,
                color: Colors.pink[200],
              ),
              onPressed: () => Navigator.pushNamed(context, '/profile'),
            )
          ],
        ),
        body: Column(
          children: [
            Container(),
            Padding(
              padding: EdgeInsets.all(pad),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const TopicsScreen(
                        courseCode: 'Basic Physics',
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  height: size.height / 3,
                  width: size.width / 1.1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Flexible(
                        child: SizedBox(
                          child: Image.asset(
                            'assets/ph.jpeg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "Basic Physics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.fade,
                            softWrap: false,
                          ),
                        ),
                      ),
                      // Flexible(child: TopicProgress(topic: topic)),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Padding(
              padding: EdgeInsets.all(pad),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const TopicsScreen(
                        courseCode: 'Basic Chemistry',
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  height: size.height / 3,
                  width: size.width / 1.1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Flexible(
                        child: SizedBox(
                          child: Image.asset(
                            'assets/chem.jpeg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            "Basic Chemistry",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.fade,
                            softWrap: false,
                          ),
                        ),
                      ),
                      // Flexible(child: TopicProgress(topic: topic)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
