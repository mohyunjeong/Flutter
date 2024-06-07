import 'package:flutter/material.dart';

class ExExample extends StatelessWidget {
  const ExExample({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green[500],
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                        size: 80,
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red[500],
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 80,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.ac_unit_rounded,
                        color: Colors.white,
                        size: 80,
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.umbrella_outlined,
                        color: Colors.white,
                        size: 80,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.white,
                        size: 80,
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.access_alarm_sharp,
                        color: Colors.white,
                        size: 80,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.assignment_returned_outlined,
                        color: Colors.white,
                        size: 80,
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.chair_rounded,
                        color: Colors.white,
                        size: 80,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.account_box_rounded,
                        color: Colors.white,
                        size: 80,
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.where_to_vote,
                        color: Colors.white,
                        size: 80,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
