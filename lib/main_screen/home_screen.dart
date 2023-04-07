import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String timeText = "";
  String dateText = "";

  String formatCurrentLiveTime(DateTime time) {
    return DateFormat("hh:mm:ss a").format(time);
  }

  String formatCurrentDate(DateTime date) {
    return DateFormat("dd MMMM, yyyy").format(date);
  }

  getCurrentLiveTime() {
    final DateTime timeNow = DateTime.now();
    final String liveTime = formatCurrentLiveTime(timeNow);
    final String liveDate = formatCurrentDate(timeNow);

    if (this.mounted) {
      setState(() {
        timeText = liveTime;
        dateText = liveDate;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    //time
    timeText = formatCurrentLiveTime(DateTime.now());
    //date
    dateText = formatCurrentDate(DateTime.now());

    Timer.periodic(const Duration(seconds: 1), (timer) {
      getCurrentLiveTime();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.amber, Colors.cyan],
              begin: FractionalOffset(0, 0),
              end: FractionalOffset(1, 0),
              stops: [0, 1],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        title: const Text(
          "Admin Web Portal",
          style: TextStyle(fontSize: 20, letterSpacing: 3, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              timeText + "\n" + dateText,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 3,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // user activate and block accounts button ui
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //active
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_add,
                  color: Colors.white,
                ),
                label: Text(
                  "Activate User".toUpperCase() +
                      "\n" +
                      "Accounts".toUpperCase(),
                  style: const TextStyle(
                      fontSize: 16, color: Colors.white, letterSpacing: 3),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(40),
                  backgroundColor: Colors.amber,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.block_flipped,
                  color: Colors.white,
                ),
                label: Text(
                  "Block User".toUpperCase() + " \n" + "Accounts".toUpperCase(),
                  style: const TextStyle(
                      fontSize: 16, color: Colors.white, letterSpacing: 3),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(40),
                  backgroundColor: Colors.cyan,
                ),
              ),
      //block
            ],
          ),

          // sellers activate and block accounts button ui
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            //active
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.person_add,
                color: Colors.white,
              ),
              label: Text(
                "Activate Sellers".toUpperCase() +
                    "\n" +
                    "Accounts".toUpperCase(),
                style: const TextStyle(
                    fontSize: 16, color: Colors.white, letterSpacing: 3),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(40),
                backgroundColor: Colors.cyan,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.block_flipped,
                color: Colors.white,
              ),
              label: Text(
                "Block Sellers".toUpperCase() +
                    " \n" +
                    "Accounts".toUpperCase(),
                style: const TextStyle(
                    fontSize: 16, color: Colors.white, letterSpacing: 3),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(40),
                backgroundColor: Colors.amber,
              ),
            ),
            //block

            // riders activate and block accounts button ui
          ]),
          //riders active and block account button ui
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //active
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_add,
                  color: Colors.white,
                ),
                label: Text(
                  "Activate Riders".toUpperCase() +
                      "\n" +
                      "Accounts".toUpperCase(),
                  style: const TextStyle(
                      fontSize: 16, color: Colors.white, letterSpacing: 3),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(40),
                  backgroundColor: Colors.amber,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.block_flipped,
                  color: Colors.white,
                ),
                label: Text(
                  "Block Raiders".toUpperCase() +
                      " \n" +
                      "Accounts".toUpperCase(),
                  style: const TextStyle(
                      fontSize: 16, color: Colors.white, letterSpacing: 3),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(40),
                  backgroundColor: Colors.cyan,
                ),
              ),
              //block
            ],
          ),
                 //logout button
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                label: Text(
                  "Logout".toUpperCase(),
                  style: const TextStyle(
                      fontSize: 16, color: Colors.white, letterSpacing: 3),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(40),
                  backgroundColor: Colors.cyan,
                ),
              ),
        ],),
      ),
    );
  }
}
