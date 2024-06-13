import 'package:flutter/material.dart';
import 'package:flutter0613/mainPage.dart';

class sub2Page extends StatelessWidget {
  const sub2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sub2 Page',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 3, 199, 90),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 3, 199, 90),
                      surfaceTintColor: Color.fromARGB(255, 3, 199, 90),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => mainPage()));
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => mainPage()), // _ : context
                              (router) => false);
                    },
                    child: Text('Main Page 이동'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 3, 199, 90),
                      surfaceTintColor: Color.fromARGB(255, 3, 199, 90),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => subPage()));
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => subPage()), // _ : context
                              (router) => false);
                    },
                    child: Text('Sub Page 이동'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
