import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.grey[800], fontSize: 20.0),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: ExactAssetImage("assets/images/two.jpg"),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Today",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800]),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 100.0,
                    margin: const EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: [Colors.blue, Colors.blue.withOpacity(0.7)],
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Steps",
                            style:
                                TextStyle(color: Colors.white, fontSize: 30.0),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "3500",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 100.0,
                    margin: const EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: [Colors.pink, Colors.red.withOpacity(0.7)],
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sports",
                            style:
                                TextStyle(color: Colors.white, fontSize: 30.0),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "25 Min",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Health Categories",
              style: TextStyle(color: Colors.grey[800], fontSize: 20.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey[200]!))),
                    child: Text("Activity",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey[200]!))),
                    child: Text("Activity",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey[200]!))),
                    child: Text("Activity",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey[200]!))),
                    child: Text("Activity",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
